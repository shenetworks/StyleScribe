//
//  AdditionalDetailsView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/22/24.
//

import SwiftUI
import SwiftData

struct AdditionalDetailsView: View {
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
            return []
        }
        else {
            return brand.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
    }
    
    
    var body: some View {
        Form {
            VStack {
                Section("Brand") {
                    TextField("Search", text: $searchText)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    List {
                        ForEach(filteredBrands) { brand in
                            Text(brand.name)
                                .onTapGesture {
                                    selectedBrand = brand.name
                                    userSelection.brand = brand
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
                
                Section("Color") {
                    ColorPickerView()
                }
                
                Section {
                    Picker("Flaws", selection: $selectedFlaw) {
                        ForEach(flaw) { flaw in
                            Text(flaw.name).tag(flaw as Flaws?)
                        }
                    }
                    .onChange(of: selectedFlaw) {
                        if (selectedFlaw == nil) == (userSelection.flaw != nil) {
                            userSelection.flaw = selectedFlaw
                        }
                    }
                }
                
                Section {
                    VStack {
                        Text("Selections:")
                            .font(.title)
                        
                        if let selectedBrand = selectedBrand {
                            Text("Brand: \(selectedBrand)")
                        }
                        if let selectedFlaw = selectedFlaw {
                            Text("Flaw: \(selectedFlaw.name)")
                        }
                    }
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        step = .summary
                    }) {
                        Text("Next")
                            .font(.headline)
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
