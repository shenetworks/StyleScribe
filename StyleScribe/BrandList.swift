//
//  BrandData.swift
//  StyleScribe
//
//  Created by shenetworks on 5/22/24.
//

import Foundation
import SwiftData

@Model

class BrandList: Identifiable {
    var name: String
    var id: String { name }
    
    init(name: String) {
        self.name = name
    }
}
