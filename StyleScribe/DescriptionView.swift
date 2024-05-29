//
//  DescriptionView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/29/24.
//

import SwiftUI

struct DescriptionView: View {
    @EnvironmentObject var userSelection: UserSelection
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Description")
                .font(.title)
                .padding(.leading)
            
            HStack {
                VStack(alignment: .leading) {
                    if let brand = userSelection.brand {
                        Text("Brand: \(brand.name)")
                    }
                    if let shirt = userSelection.shirt {
                        Text("Shirt: \(shirt.name)")
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
                        ForEach(userSelection.materials) { MaterialSelection in
                            HStack {
                                Text("\(MaterialSelection.material.name):")
                                Text("\(MaterialSelection.inputValue)%")
                            }
                        }
                    }
                }
                .padding()
                Spacer()
                
                Button(action: {
                    copyToClipboard()
                }) {
                    Image(systemName: "doc.on.doc")
                }
                .padding()
                
            }
        }
    }
    
    private func copyToClipboard() {
        let summary = generateSummaryText()
        UIPasteboard.general.string = summary
    }
    private func generateSummaryText() -> String {
            var summary = ""
            if let brand = userSelection.brand?.name {
                summary += "Brand: \(brand)\n"
            }
            if let shirt = userSelection.shirt?.name {
                summary += "Shirt: \(shirt)\n"
            }
            if let dress = userSelection.dress?.name {
                summary += "Style: \(dress)\n"
            }
            if let pant = userSelection.pant?.name {
                summary += "Pant: \(pant)\n"
            }
            if let rise = userSelection.rise?.name {
                summary += "Rise: \(rise)\n"
            }
            if let skirt = userSelection.skirt?.name {
                summary += "Style: \(skirt)\n"
            }
            if let skirtLength = userSelection.skirtLength?.name {
                summary += "Length: \(skirtLength)\n"
            }
            if let jacket = userSelection.jacket?.name {
                summary += "Style: \(jacket)\n"
            }
            if let sweater = userSelection.sweater?.name {
                summary += "Style: \(sweater)\n"
            }
            if let shorts = userSelection.short?.name {
                summary += "Style: \(shorts)\n"
            }
            if let sleeve = userSelection.sleeve?.name {
                summary += "Sleeve: \(sleeve)\n"
            }
            if let neckline = userSelection.neckline?.name {
                summary += "Neckline: \(neckline)\n"
            }
            if let pattern = userSelection.pattern?.name {
                summary += "Pattern: \(pattern)\n"
            }
            if let color = userSelection.color?.name {
                summary += "Color: \(color)\n"
            }
            if let flaw = userSelection.flaw?.name {
                summary += "Flaw: \(flaw)\n"
            }
            if !userSelection.materials.isEmpty {
                summary += "Materials:\n"
                for materialSelection in userSelection.materials {
                    summary += "\(materialSelection.material.name): \(materialSelection.inputValue)%\n"
                }
            }
            return summary
        }
    
}

