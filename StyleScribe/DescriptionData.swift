//
//  DescriptionData.swift
//  StyleScribe
//
//  Created by shenetworks on 5/21/24.
//

import Foundation
import SwiftUI


// Lazy Grid Displayable Protocol
protocol Displayable: Identifiable, Hashable {
    var name: String { get }
    var imageName: String { get }
}

extension Displayable {
    var image: Image {
        Image(imageName)
    }
}

// Clothing Categories
struct Category: Displayable {
    var name: String
    var id: String { name }
    var imageName: String

}

let category: [Category] = [
    Category(name: "Tops", imageName: "Shirts"),
    Category(name: "Dresses", imageName: "Dresses"),
    Category(name: "Skirts", imageName: "Skirts"),
    Category(name: "Pants", imageName: "Pants"),
    Category(name: "Jackets", imageName: "Jackets"),
    Category(name: "Sweaters", imageName: "Sweaters"),
    Category(name: "Shorts", imageName: "Shorts")
]

struct Shirts: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let shirt: [Shirts] = [
    Shirts(name: "Blouse", imageName: "unavailable"),
    Shirts(name: "Button Down", imageName: "unavailable"),
    Shirts(name: "Bodysuit", imageName: "unavailable"),
    Shirts(name: "Tee Shirt", imageName: "unavailable"),
    Shirts(name: "Tunic", imageName: "unavailable"),
    Shirts(name: "Crop Top", imageName: "unavailable")

]

//Sweaters

struct Sweaters: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let sweater: [Sweaters] = [
    Sweaters(name: "Cardigan", imageName: "unavailable"),
    Sweaters(name: "Off The Shoulder", imageName: "unavailable"),
    Sweaters(name: "Full Zipper", imageName: "unavailable"),
    Sweaters(name: "Quarter Zip", imageName: "unavailable"),
    Sweaters(name: "Cable Knit", imageName: "unavailable"),
    Sweaters(name: "Henley", imageName: "unavailable"),
    Sweaters(name: "Pullover", imageName: "unavailable"),
    Sweaters(name: "Vest", imageName: "unavailable")
]


// Necklines
struct Necklines: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let necklines: [Necklines] = [
    Necklines(name: "V Neck", imageName: "vNeck"),
    Necklines(name: "Turtle Neck", imageName: "turtle"),
    Necklines(name: "Sweetheart Neck", imageName: "sweetheart"),
    Necklines(name: "Square Neck", imageName: "square"),
    Necklines(name: "Semi Sweetheart Neck", imageName: "semiSweetheart"),
    Necklines(name: "Scoop Neck", imageName: "scoop"),
    Necklines(name: "Queen Anne Neck", imageName: "QueenAnne"),
    Necklines(name: "Key Hole Neck", imageName: "keyHole"),
    Necklines(name: "Illusion Neck", imageName: "illusion"),
    Necklines(name: "Crew Neck", imageName: "crewNeck"),
    Necklines(name: "Boat Neck", imageName: "boat"),
    Necklines(name: "Asymmetric Neck", imageName: "Asymmetric"),
]

struct Sleeves: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let sleeve: [Sleeves] = [
    Sleeves(name: "Sleeveless", imageName: "unavailable"),
    Sleeves(name: "Cap Sleeve", imageName: "unavailable"),
    Sleeves(name: "Short Sleeve", imageName: "unavailable"),
    Sleeves(name: "3/4 Length Sleeve", imageName: "unavailable"),
    Sleeves(name: "Long Sleeve", imageName: "unavailable"),
    Sleeves(name: "Cuffed Sleeve", imageName: "unavailable"),
    Sleeves(name: "Bishop Sleeve", imageName: "unavailable"),
    Sleeves(name: "Angel Sleeve", imageName: "unavailable"),
    Sleeves(name: "Bell Sleeve", imageName: "unavailable"),
    Sleeves(name: "Puffed Sleeve", imageName: "unavailable"),
    Sleeves(name: "Trumpet Sleeve", imageName: "unavailable"),
    Sleeves(name: "Dolman Sleeve", imageName: "unavailable")
]

struct Dresses: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let dresses: [Dresses] = [
    Dresses(name: "Ball Gown", imageName: "ballgown"),
    Dresses(name: "Bodycon", imageName: "bodycon"),
    Dresses(name: "Bouffant", imageName: "Bouffant"),
    Dresses(name: "Drop Waist", imageName: "dropwaist"),
    Dresses(name: "Halter", imageName: "halterdress"),
    Dresses(name: "Mermaid", imageName: "mermaid"),
    Dresses(name: "Peplum", imageName: "peplum"),
    Dresses(name: "Shift Dress", imageName: "shift"),
    Dresses(name: "Slip Dress", imageName: "slip"),
    Dresses(name: "Wrap Dress", imageName: "wrapdress")

]

struct Pants: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let pants: [Pants] = [
    Pants(name: "Stright Leg Pants", imageName: "unavailable"),
    Pants(name: "Skinny Leg Pants", imageName: "unavailable"),
    Pants(name: "Bootcut Pants", imageName: "unavailable"),
    Pants(name: "Flare Pants", imageName: "unavailable"),
    Pants(name: "Wide Leg Pants", imageName: "unavailable"),
    Pants(name: "Stirrup Pants", imageName: "unavailable"),
    Pants(name: "Cargo Pants", imageName: "unavailable"),
    Pants(name: "Sailor Pants", imageName: "unavailable"),
    Pants(name: "Joggers", imageName: "unavailable"),
    Pants(name: "High Cuff Pants", imageName: "unavailable"),
    Pants(name: "Cuffed Pants", imageName: "unavailable"),
    Pants(name: "Leggings", imageName: "unavailable"),
    Pants(name: "Barrel Leg Pants", imageName: "unavailable"),
    Pants(name: "Boyfriend Pants", imageName: "unavailable")
]

struct Rise: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let rise: [Rise] = [
    Rise(name: "Ultra Low Rise", imageName: "unavailable"),
    Rise(name: "Low Rise", imageName: "unavailable"),
    Rise(name: "Mid Rise", imageName: "unavailable"),
    Rise(name: "High Rise", imageName: "unavailable"),
    Rise(name: "Ultra High Rise", imageName: "unavailable")
]

struct Jackets: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let jacket: [Jackets] = [
    Jackets(name: "Puffer", imageName: "unavailable"),
    Jackets(name: "Parka", imageName: "unavailable"),
    Jackets(name: "Pea coat", imageName: "unavailable"),
    Jackets(name: "Cape", imageName: "unavailable"),
    Jackets(name: "Duster", imageName: "unavailable"),
    Jackets(name: "Trench Coat", imageName: "unavailable"),
    Jackets(name: "Wrap Coat", imageName: "unavailable"),
    Jackets(name: "Jean Jacket", imageName: "unavailable"),
    Jackets(name: "Motorcycle", imageName: "unavailable"),
    Jackets(name: "Bomber", imageName: "unavailable"),
    Jackets(name: "Windbreaker", imageName: "unavailable"),
    Jackets(name: "Rain", imageName: "unavailable"),
    Jackets(name: "Ski/Snow", imageName: "unavailable")
    
]

struct Shorts: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let short: [Shorts] = [
    Shorts(name: "Athletic", imageName: "unavailable"),
    Shorts(name: "Bermuda", imageName: "unavailable"),
    Shorts(name: "Bike", imageName: "unavailable"),
    Shorts(name: "Cargo", imageName: "unavailable"),
    Shorts(name: "Jean", imageName: "unavailable"),
    Shorts(name: "Skort", imageName: "unavailable"),
    Shorts(name: "Paperbag", imageName: "unavailable"),
    Shorts(name: "Sailor", imageName: "unavailable")
]

struct Skirts: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let skirt: [Skirts] = [
    Skirts(name: "A-Ling", imageName: "unavailable"),
    Skirts(name: "Asymmetrical", imageName: "unavailable"),
    Skirts(name: "Pencil", imageName: "unavailable"),
    Skirts(name: "Accordian", imageName: "unavailable"),
    Skirts(name: "Bubble", imageName: "unavailable"),
    Skirts(name: "Cowl", imageName: "unavailable"),
    Skirts(name: "Mini", imageName: "unavailable"),
    Skirts(name: "Peplum", imageName: "unavailable"),
    Skirts(name: "Mermaid", imageName: "unavailable"),
    Skirts(name: "Layered", imageName: "unavailable"),
    Skirts(name: "Tulip", imageName: "unavailable"),
    Skirts(name: "Slit", imageName: "unavailable"),
    Skirts(name: "Wrap", imageName: "unavailable"),
    Skirts(name: "Tulle", imageName: "unavailable")


]

struct SkirtLength: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let skirtLength: [SkirtLength] = [
    SkirtLength(name: "Mini", imageName: "unavailable"),
    SkirtLength(name: "Midi", imageName: "unavailable"),
    SkirtLength(name: "Maxi", imageName: "unavailable")

]

struct Materials: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let materials: [Materials] = [
    Materials(name: "Cotton", imageName: "unavailable"),
    Materials(name: "Organic Cotton", imageName: "unavailable "),
    Materials(name: "Linen", imageName: "unavailable"),
    Materials(name: "Wool", imageName: "unavailable"),
    Materials(name: "Silk", imageName: "unavailable"),
    Materials(name: "Polyester", imageName: "unavailable"),
    Materials(name: "Nylon", imageName: "unavailable"),
    Materials(name: "Rayon", imageName: "unavailable"),
    Materials(name: "Spandex (Lycra)", imageName: "unavailable"),
    Materials(name: "Acrylic", imageName: "unavailable"),
    Materials(name: "Denim", imageName: "unavailable"),
    Materials(name: "Leather", imageName: "unavailable"),
    Materials(name: "Cashmere", imageName: "unavailable"),
    Materials(name: "Flannel", imageName: "unavailable"),
    Materials(name: "Velvet", imageName: "unavailable"),
    Materials(name: "Chiffon", imageName: "unavailable"),
    Materials(name: "Satin", imageName: "unavailable"),
    Materials(name: "Tweet", imageName: "unavailable"),
    Materials(name: "Hemp", imageName: "unavailable"),
    Materials(name: "Bamboo", imageName: "unavailable"),
    Materials(name: "Modal", imageName: "unavailable"),
    Materials(name: "Mohair", imageName: "unavailable"),
    Materials(name: "Tulle", imageName: "unavailable"),
    Materials(name: "Jersey", imageName: "unavailable"),
    Materials(name: "Organza", imageName: "unavailable"),
    Materials(name: "Lace", imageName: "unavailable"),
    Materials(name: "Suede", imageName: "unavailable"),
    Materials(name: "Viscose", imageName: "unavailable"),
    Materials(name: "Merino Wool", imageName: "unavailable"),
    Materials(name: "Georgette", imageName: "unavailable"),
    Materials(name: "Gabardine", imageName: "unavailable"),
    Materials(name: "Lyocell", imageName: "unavailable"),
    Materials(name: "Cupro", imageName: "unavailable"),
    Materials(name: "Acetate", imageName: "unavailable")

]

struct MaterialSelection: Identifiable {
    var material: Materials
    var id: String { material.name }
    var inputValue: Int
}


struct Patterns: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
}

let pattern: [Patterns] = [
    Patterns(name: "Solid", imageName: "Solid"),
    Patterns(name: "Abstract", imageName: "Abstract"),
    Patterns(name: "Animal Print", imageName: "AnimalPrint"),
    Patterns(name: "Argyle", imageName: "Argyle"),
    Patterns(name: "Camo", imageName: "Camo"),
    Patterns(name: "Checkered", imageName: "Checkered"),
    Patterns(name: "Cheveron", imageName: "Cheveron"),
    Patterns(name: "Floral", imageName: "Floral"),
    Patterns(name: "Geometric", imageName: "Geometric"),
    Patterns(name: "Gingham", imageName: "Gingham"),
    Patterns(name: "Harlequin", imageName: "Harlequin"),
    Patterns(name: "Herringbone", imageName: "Herringbone"),
    Patterns(name: "Honeycomb", imageName: "Honeycomb"),
    Patterns(name: "Houndstooth", imageName: "Houndstooth"),
    Patterns(name: "Ikat", imageName: "Ikat"),
    Patterns(name: "Ombre", imageName: "Ombre"),
    Patterns(name: "Paisley", imageName: "Paisley"),
    Patterns(name: "Plaid", imageName: "Plaid"),
    Patterns(name: "Polka Dots", imageName: "PolkaDots"),
    Patterns(name: "Stripes", imageName: "Stripes"),
    Patterns(name: "Tartan", imageName: "Tartan"),
    Patterns(name: "Tie Dye", imageName: "Tiedye"),
    Patterns(name: "Windowpane", imageName: "Windowpane")
]


struct ColorItem: Identifiable {
    var name: String
    var id = UUID()
    var color: Color
}

let tan = Color(red: 193 / 255.0, green: 163 / 255.0, blue: 127 / 255.0)
let cream = Color(red: 242 / 255.0, green: 229 / 255.0, blue: 206 / 255.0)
let silver = Color(red: 188 / 255.0, green: 188 / 255.0, blue: 188 / 255.0)
let gold = Color(red: 238 / 255.0, green: 186 / 255.0, blue: 43 / 255.0)
let brown = Color(red: 105 / 255.0, green: 61 / 255.0, blue: 20 / 255.0)


let colors: [ColorItem] = [
    ColorItem(name: "Red", color: .red),
    ColorItem(name: "Green", color: .green),
    ColorItem(name: "Blue", color: .blue),
    ColorItem(name: "Yellow", color: .yellow),
    ColorItem(name: "Orange", color: .orange),
    ColorItem(name: "Purple", color: .purple),
    ColorItem(name: "Pink", color: .pink),
    ColorItem(name: "Black", color: .black),
    ColorItem(name: "Gray", color: .gray),
    ColorItem(name: "Brown", color: brown),
    ColorItem(name: "Mint", color: .mint),
    ColorItem(name: "White", color: .white),
    ColorItem(name: "Tan", color: tan),
    ColorItem(name: "Cream", color: cream),
    ColorItem(name: "Silver", color: silver),
    ColorItem(name: "Gold", color: gold)

]


struct Flaws: Displayable {
    var name: String
    var id: String { name }
    var imageName: String
    
}

let flaw: [Flaws] = [
    Flaws(name: "None", imageName: "unavailable"),
    Flaws(name: "Stain", imageName: "unavailable"),
    Flaws(name: "Tear", imageName: "unavailable"),
    Flaws(name: "Pilling", imageName: "unavailable"),
    Flaws(name: "Fading", imageName: "unavailable"),
    Flaws(name: "Hole", imageName: "unavailable"),
    Flaws(name: "Loose Threads", imageName: "unavailable"),
    Flaws(name: "Missing Button", imageName: "unavailable"),
    Flaws(name: "Broken Zipper", imageName: "unavailable"),
    Flaws(name: "Fraying", imageName: "unavailable"),
    Flaws(name: "Discoloration", imageName: "unavailable"),
    Flaws(name: "Shrinking", imageName: "unavailable"),
    Flaws(name: "Stretching", imageName: "unavailable"),
    Flaws(name: "Snag", imageName: "unavailable")

]

class UserSelection: ObservableObject {
    @Published var category: Category?
    @Published var neckline: Necklines?
    @Published var dress: Dresses?
    @Published var pant: Pants?
    @Published var rise: Rise?
    @Published var jacket: Jackets?
    @Published var shirt: Shirts?
    @Published var short: Shorts?
    @Published var sleeve: Sleeves?
    @Published var sweater: Sweaters?
    @Published var skirtLength: SkirtLength?
    @Published var skirt: Skirts?
    @Published var pattern: Patterns?
    @Published var flaw: Flaws?
    @Published var color: ColorItem?
    @Published var materials: [MaterialSelection] = []
    @Published var brand: BrandList?
}

struct UserSelections {
    var category: Category?
    var neckline: Necklines?
    var dress: Dresses?
    var pant: Pants?
    var rise: Rise?
    var jacket: Jackets?
    var shirt: Shirts?
    var short: Shorts?
    var sleeve: Sleeves?
    var sweater: Sweaters?
    var skirtLength: SkirtLength?
    var skirt: Skirts?
    var pattern: Patterns?
    var flaw: Flaws?
    var color: ColorItem?
    var materials: MaterialSelection?
    var brand: BrandList?

}


