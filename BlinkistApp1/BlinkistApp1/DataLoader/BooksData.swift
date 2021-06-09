//
//  BooksData.swift
//  BlinkistApp1
//
//  Created by Decagon on 21.4.21.
//

import Foundation

struct BooksData: Decodable {
    var id: Int
    var title: String
    var author: String
    var book_type: String
    var length: Int
    var image: String
    var description: String
    var access: String
    
}
