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
    

    var body: some View {
        VStack {
            Form {
                Section("Flaws") {
                    Picker("Flaws:", selection: $selectedFlaw) {
                        ForEach(flaw) { flaw in
                            Text(flaw.name).tag(flaw as Flaws?)
                        }
                    }
                    .pickerStyle(.menu)
                    .onChange(of: selectedFlaw, initial: true) { oldValue, newValue in
                        if newValue != oldValue {
                            userSelection.flaw = newValue
                            
                            
                        }
                    }

                }
                Section("Color") {
                    ColorPickerView()
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
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    step = .brand
                }) {
                    Text("Back")
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
}
