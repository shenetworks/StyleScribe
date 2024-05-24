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
                case .neckline:
                    LazyGridView(items: necklines) { neckline in
                        userSelection.neckline = neckline
                        step = .sleeve
                    }
                case .dresses:
                    LazyGridView(items: dresses) { dress in
                        userSelection.dress = dress
                        step = .pattern
                    }
                case .pants:
                    LazyGridView(items: pants) { pant in
                        userSelection.pant = pant
                        step = .rise
                    }
                case .rise:
                    LazyGridView(items: rise) { rise in
                        userSelection.rise = rise
                        step = .pattern
                    }
                case .sleeve:
                    LazyGridView(items: sleeve) { sleeve in
                        userSelection.sleeve = sleeve
                        step = .pattern
                    }
                case .short:
                    LazyGridView(items: short) { short in
                        userSelection.short = short
                        step = .rise
                    }
                case .jacket:
                    LazyGridView(items: jacket) { jacket in
                        userSelection.jacket = jacket
                        step = .pattern
                    }
                case .skirt:
                    LazyGridView(items: skirt) { skirt in
                        userSelection.skirt = skirt
                        step = .skirtLength
                    }
                case .skirtLength:
                    LazyGridView(items: skirtLength) { length in
                        userSelection.skirtLength = length
                        step = .pattern
                    }
                case .sweater:
                    LazyGridView(items: sweater) { sweater in
                        userSelection.sweater = sweater
                        step = .neckline
                    }
                case .pattern:
                    LazyGridView(items: pattern) { pattern in
                        userSelection.pattern = pattern
                        step = .material
                    }
                case .material:
                    MaterialView(step: $step)
                        
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
    case category, neckline, dresses, pants, rise, sleeve, short, jacket, skirt, skirtLength, sweater, pattern, material, details, summary
}
