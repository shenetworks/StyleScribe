//
//  LazyGridView.swift
//  StyleScribe
//
//  Created by shenetworks on 5/21/24.
//

import SwiftUI

struct LazyGridView<Item: Displayable>: View {
    let items: [Item]
    
    let columns = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    
    ]
    
    let onItemSelected: (Item) -> Void
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(items) { item in
                    Button(action: {
                        onItemSelected(item)
                    }) {
                        ButtonView(item: item)
                    }
                }
            }
            .padding()
        }
    }
}

struct LazyGridView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleItems = [
            Category(name: "Tops", imageName: "Shirts"),
            Category(name: "Dresses", imageName: "Dresses")
        ]
        LazyGridView(items: sampleItems, onItemSelected: { _ in })
    }
}
