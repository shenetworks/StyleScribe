//
//  SelectionSummaryView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/21/24.
//

import SwiftUI

struct SelectionSummaryView: View {
    @EnvironmentObject var userSelection: UserSelection
    @Binding var step: SelectionStep
    
    var body: some View {
        VStack {
            if let brand = userSelection.brand {
                Text("Brand: \(brand.name)")
            }
            if let category = userSelection.category {
                Text("Category: \(category.name)")
            }
            if let dress = userSelection.dress {
                Text("Style: \(dress.name)")
            }
            if let pant = userSelection.pant {
                Text("Pant: \(pant.name)")
            }
            if let rise = userSelection.rise {
                Text("Rise: \(rise.name)")
            }
            if let skirt = userSelection.skirt {
                Text("Style: \(skirt.name)")
            }
            if let skirtLength = userSelection.skirtLength {
                Text("Length: \(skirtLength.name)")
            }
            if let jacket = userSelection.jacket {
                Text("Style: \(jacket.name)")
            }
            if let sweater = userSelection.sweater {
                Text("Style: \(sweater.name)")
            }
            if let shorts = userSelection.short {
                Text("Style: \(shorts.name)")
            }
            if let shirt = userSelection.shirt {
                Text("Style: \(shirt.name)")
            }
            if let sleeve = userSelection.sleeve {
                Text("Sleeve: \(sleeve.name)")
            }
            if let neckline = userSelection.neckline {
                Text("Neckline: \(neckline.name)")
            }
            if let pattern = userSelection.pattern {
                Text("Pattern: \(pattern.name)")
            }
            if let color = userSelection.color {
                Text("Color: \(color.name)")
            }
            if let flaw = userSelection.flaw {
                Text("Flaw: \(flaw.name)")
            }
            if !userSelection.materials.isEmpty { //broken
                Text("Materials:")
                    .font(.headline)
                ForEach(userSelection.materials) { MaterialSelection in
                    HStack {
                        Text(MaterialSelection.material.name)
                        Spacer()
                        Text("\(MaterialSelection.inputValue)")
                    }
                }
            }
            
            
            
            Spacer()
            
            Button(action: {
                step = .category
                resetSelection()
            }) {
                
                Text("Start Over")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
    private func resetSelection() {
        userSelection.brand = nil
        userSelection.category = nil
        userSelection.neckline = nil
        userSelection.dress = nil
        userSelection.pant = nil
        userSelection.rise = nil
        userSelection.color = nil
        userSelection.flaw = Flaws(name: "No Flaws", imageName: "unavailable")
        userSelection.skirtLength = nil
        userSelection.sweater = nil
        userSelection.jacket = nil
        userSelection.short = nil
        userSelection.pattern = nil
        userSelection.materials.removeAll()
        

    }

}


