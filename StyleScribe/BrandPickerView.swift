//
//  BrandPickerView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/29/24.
//

import SwiftUI
import SwiftData

struct BrandPickerView: View {
    @Environment(\.modelContext) private var context
    @Binding var step: SelectionStep
    @EnvironmentObject var userSelection: UserSelection
    @State private var searchText: String = ""
    @State private var newBrandName: String = ""
    @State private var selectedBrand: String?
    @State private var selectedFlaw: Flaws? = nil
    @Query var brand: [BrandList]
    
    let tempBrand = [ BrandList(name: "Lululemon"), BrandList(name: "Veronica Beard"), BrandList(name: "A New Day"), BrandList(name: "Athleta"), BrandList(name: "Polo"), BrandList(name: "Chanel")]
    
    var filteredBrands: [BrandList] {
        if searchText.isEmpty {
            return brand
        }
        else {
            return brand.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
    }
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(filteredBrands) { brand in
                        Text(brand.name)
                            .onTapGesture {
                                selectedBrand = brand.name
                                userSelection.brand = brand
                                step = .details
                            }
                        
                    }
                    .onDelete(perform: deleteBrand)
                    
                }
                if filteredBrands.isEmpty && !searchText.isEmpty {
                    Button("Add \"\(searchText)\"") {
                        let newBrand = BrandList(name: searchText)
                        context.insert(newBrand)
                    }
                }
                
            }
            .searchable(text: $searchText, prompt: "Search Brands")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        step = .details
                    }) {
                        Text("Next")
                            .font(.headline)
                            .padding()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        step = .material
                    }) {
                        Text("Back")
                            .font(.headline)
                            .padding()
                    }
                }
            }
        }
    }
    
    func deleteBrand(_ indexSet: IndexSet) {
        for index in indexSet {
            let brand = brand[index]
            context.delete(brand)
        }
    }
}
