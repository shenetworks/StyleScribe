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
            if let selectedColor = userSelection.color {
                Text("\(selectedColor.name)")
                    .font(.title)
                    .foregroundStyle(selectedColor.color)
                
            } else {
                Text("Select a color")
                    .font(.title)
            }
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(colors) { item in
                    Circle()
                        .fill(item.color)
                        .aspectRatio(contentMode: .fit)
                        .onTapGesture {
                            userSelection.color = item
                        }
                        .overlay(
                            Circle()
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding(1)
            
        }
        .padding()
        .background {
            Color.white
                .opacity(20.0)
                .cornerRadius(20)
                
            
        }
        .padding()
   
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
            .environmentObject(UserSelection())
    }
}
