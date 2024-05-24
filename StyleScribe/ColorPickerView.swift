//
//  ColorPickerView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/23/24.
//

import SwiftUI

struct ColorPickerView: View {
    @EnvironmentObject var userSelection: UserSelection
    
    let columns = [
        GridItem(.adaptive(minimum: 50))
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(colors) { item in
                    Circle()
                        .fill(item.color)
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            userSelection.color = item
                        }
                        .overlay(
                            Circle()
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            
            if let selectedColor = userSelection.color {
                Text("\(selectedColor.name)")
                    .foregroundStyle(selectedColor.color)
                    .font(.headline)
            } else {
                Text("Select a color")
            }
        }
    }
}

#Preview {
    ColorPickerView()
}
