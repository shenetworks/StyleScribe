//
//  ButtonView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/21/24.
//

import SwiftUI

struct ButtonView<Item: Displayable>: View {
    var item: Item
    
    var body: some View {
        VStack(spacing: 0) {
            item.image
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Rectangle())
            Text(item.name)
                .font(.caption)

                
        }
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
        .background(Color(.systemGray6))
        .cornerRadius(8)

    }
}


#Preview {
    ButtonView(item: Category(name: "Tops", imageName: "Shirts"))
}
