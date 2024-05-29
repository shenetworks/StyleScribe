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
        ZStack(alignment: .bottom) {
            item.image
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(item.name)
                .font(.caption)
                .lineLimit(1)
                .padding(.horizontal, 30)
                .padding(.vertical, 5)
                .background(.ultraThickMaterial)
                .foregroundStyle(.black)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(4)
            

                
        }
        .frame(width: 150, height: 150)
        .background(Color(.white))
        .cornerRadius(8)
        .padding()

    }
}


#Preview {
    ButtonView(item: Category(name: "Tops", imageName: "Shirts"))
}
