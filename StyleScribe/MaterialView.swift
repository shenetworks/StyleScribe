//
//  MaterialView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/22/24.
//

import SwiftUI

struct MaterialView: View {
    @EnvironmentObject var userSelection: UserSelection
    @State private var selectedMaterials: [MaterialSelection] = []
    @State private var inputValues: [String: Int] = [:]
    @Binding var step: SelectionStep
    
    var body: some View {
        NavigationView {
            List(materials) {material in
                HStack {
                    Button(action: {
                        toggleMaterialSelection(material)
                    }) {
                        HStack {
                            if isSelected(material: material) {
                                Image(systemName: "checkmark")
                            }
                            Text(material.name)
                        }
                    }
                    Spacer()
                    if isSelected(material: material) {
                        TextField("1-100", value: Binding(
                            get: { inputValues[material.name, default: 0] },
                            set: { newValue in inputValues[material.name] = newValue
                                updateMaterialInputValue(material, newValue: newValue)
                            }
                        ), formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 50)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("%")
                    }
                }
            }
            .navigationTitle("Materials")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        step = .brand
                    }) {
                        Text("Next")
                            .font(.headline)
                            .padding()
                    }
                }
            }
        }
    }
    private func toggleMaterialSelection(_ material: Materials) {
        if let index = userSelection.materials.firstIndex(where: {$0.material.id == material.id}) {
            userSelection.materials.remove(at: index)
        } else {
            userSelection.materials.append(MaterialSelection(material: material, inputValue: inputValues[material.name, default: 0]))
        }
    }
    
    private func isSelected(material: Materials) -> Bool {
        userSelection.materials.contains { $0.material.id == material.id}
    }
    
    private func updateMaterialInputValue(_ material: Materials, newValue: Int) {
            if let index = userSelection.materials.firstIndex(where: { $0.material.id == material.id }) {
                userSelection.materials[index].inputValue = newValue
            }
        }
}


