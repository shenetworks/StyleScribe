//
//  SelectionSummaryView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/21/24.
//

import SwiftUI
import UIKit

struct SelectionSummaryView: View {
    @EnvironmentObject var userSelection: UserSelection
    @Binding var step: SelectionStep
    @State private var title: String = ""
    
    
    
    
    var body: some View {
        VStack {
            TitleView(title: $title)
                .environmentObject(userSelection)
            Divider()
            
            DescriptionView()
                .environmentObject(userSelection)
                        
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

    
    private func resetSelection() {
        userSelection.brand = nil
        userSelection.shirt = nil
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


