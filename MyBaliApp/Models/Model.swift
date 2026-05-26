//
//  Model.swift
//  MyBaliApp
//
//  Created by Jason Marsellino on 12/03/26.
//


import Foundation


class Groceries {
    var id = UUID()
    var name: String
    var supermarket : String
    var price : Int
    var photos: String
    var note: String

    init(name: String = "", supermarket: String = "", price: Int = 10000, photos : String = "", note : String =  "") {
        self.name = name
        self.supermarket = supermarket
        self.price = price
        self.photos = photos
        self.note = note
    }
}
