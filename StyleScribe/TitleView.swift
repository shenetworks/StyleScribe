//
//  TitleView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/29/24.
//

import SwiftUI
import UIKit

struct TitleView: View {
    @EnvironmentObject var userSelection: UserSelection
    @Binding var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title")
                .font(.title)
                .padding()
            HStack {
                Text(title)
                    .padding()
                    .onAppear {
                        generateTitle()
                    }
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
        UIPasteboard.general.string = title
    }
    
    private func generateTitle() {
        var newTitle = ""
        if let brand = userSelection.brand?.name {
            newTitle += "\(brand) "
        }
        if let pattern = userSelection.pattern?.name {
            newTitle += "\(pattern) "
        }
        if let color = userSelection.color?.name {
            newTitle += "\(color) "
        }
        if let neckline = userSelection.neckline?.name {
            newTitle += "\(neckline) "
        }
        if let sleeve = userSelection.sleeve?.name {
            newTitle += "\(sleeve) "
        }
        if let shirt = userSelection.shirt?.name {
            newTitle += "\(shirt) "
        }
        if let sweater = userSelection.sweater?.name {
            newTitle += "\(sweater) "
        }
        if let jacket = userSelection.jacket?.name {
            newTitle += "\(jacket) "
        }
        if let rise = userSelection.rise?.name {
            newTitle += "\(rise) "
        }
        if let pant = userSelection.pant?.name {
            newTitle += "\(pant) "
        }
        if let shorts = userSelection.short?.name {
            newTitle += "\(shorts) "
        }
        
        if let skirtLength = userSelection.skirtLength?.name {
            newTitle += "\(skirtLength) "
        }
        
        if let dress = userSelection.dress?.name {
            newTitle += "\(dress) "
        }
        if let skirt = userSelection.skirt?.name {
            newTitle += "\(skirt) "
        }

            
        title = newTitle

    }
    
    
}
