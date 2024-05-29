//
//  SelectionView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/21/24.
//

import SwiftUI
import SwiftData

struct SelectionView: View {
    @Environment(\.modelContext) private var context
    @EnvironmentObject var userSelection: UserSelection
    @State private var step: SelectionStep = .category

    
    
    var body: some View {
        NavigationStack {
            VStack {
                switch step {
                case .category:
                    LazyGridView(items: category) { category in
                        userSelection.category = category
                        if category.name == "Tops" {
                            step = .neckline
                        } else if category.name == "Dresses" {
                            step = .dresses
                        } else if category.name == "Pants" {
                            step = .pants
                        } else if category.name == "Shorts" {
                            step = .short
                        } else if category.name == "Jackets" {
                            step = .jacket
                        } else if category.name == "Skirts" {
                            step = .skirt
                        } else if category.name == "Sweaters" {
                            step = .sweater
                        }
                    }
                    .navigationTitle("Category")
                case .neckline:
                    LazyGridView(items: necklines) { neckline in
                        userSelection.neckline = neckline
                        step = .sleeve
                    }
                    .navigationTitle("Neckline")
                case .dresses:
                    LazyGridView(items: dresses) { dress in
                        userSelection.dress = dress
                        step = .pattern
                    }
                    .navigationTitle("Dress")
                case .pants:
                    LazyGridView(items: pants) { pant in
                        userSelection.pant = pant
                        step = .rise
                    }
                    .navigationTitle("Pants")
                case .rise:
                    LazyGridView(items: rise) { rise in
                        userSelection.rise = rise
                        step = .pattern
                    }
                    .navigationTitle("Rise")
                case .sleeve:
                    LazyGridView(items: sleeve) { sleeve in
                        userSelection.sleeve = sleeve
                        step = .pattern
                    }
                    .navigationTitle("Sleeve")
                case .short:
                    LazyGridView(items: short) { short in
                        userSelection.short = short
                        step = .rise
                    }
                    .navigationTitle("Shorts")
                case .jacket:
                    LazyGridView(items: jacket) { jacket in
                        userSelection.jacket = jacket
                        step = .pattern
                    }
                    .navigationTitle("Jacket")
                case .skirt:
                    LazyGridView(items: skirt) { skirt in
                        userSelection.skirt = skirt
                        step = .skirtLength
                    }
                    .navigationTitle("Skirt")
                case .skirtLength:
                    LazyGridView(items: skirtLength) { length in
                        userSelection.skirtLength = length
                        step = .pattern
                    }
                    .navigationTitle("Skirt Length")
                case .sweater:
                    LazyGridView(items: sweater) { sweater in
                        userSelection.sweater = sweater
                        step = .neckline
                    }
                    .navigationTitle("Sweater")
                case .pattern:
                    LazyGridView(items: pattern) { pattern in
                        userSelection.pattern = pattern
                        step = .material
                    }
                    .navigationTitle("Pattern")
                case .material:
                    MaterialView(step: $step)
                
                case .brand:
                    BrandPickerView(step: $step)
                        .navigationTitle("Brand")
                        
                case .details:
                    AdditionalDetailsView(step: $step)
                        .navigationTitle("Details")
                case .summary:
                    SelectionSummaryView(step: $step)
                        .navigationTitle("Summary")
                    

                }
            }
        }
        
        
    }
}

enum SelectionStep {
    case category, neckline, dresses, pants, rise, sleeve, short, jacket, skirt, skirtLength, sweater, pattern, material, brand, details, summary
}
