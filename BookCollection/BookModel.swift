//
//  BookModel.swift
//  BookCollection
//
//  Created by Chakane Shegog on 6/13/21.
//

import Foundation
import UIKit

struct BookModel {
    let title: String
    let author: String
    let numberOfPages: Int
    let publisher: String
    let dateReleased: String
    let rating: Double
    let image: UIImage
    
    var bookDescription: String {
        let description = "\(title) by \(author)\n\nPublisher: \(publisher)\nNumber Of Pages: \(numberOfPages)\nReleased: \(dateReleased)\nRating: \(rating) "
        return description
    }
    
    static func getBooks() -> [BookModel] {
        var books = [BookModel]()
        
        let theCatcherInTheRye = BookModel.init(title: "The Catcher In the Rye", author: "J. D. Salinger", numberOfPages: 234, publisher: "Little, Brown and Company", dateReleased: "July 16, 1951", rating: 4.0, image: #imageLiteral(resourceName: "rye"))
        
        let catsCradle = BookModel.init(title: "Cats Cradle", author: "Kurt Vonnegut", numberOfPages: 304, publisher: "Holt, Rinehart and Winston", dateReleased: "1963", rating: 4.5, image: #imageLiteral(resourceName: "cats_cradle"))
        
        let whenYouAreEngulfedInFlames = BookModel.init(title: "When You Are Engulfed In Flames", author: "David Sedaris", numberOfPages: 323, publisher: "Little, Brown and Compnay", dateReleased: "June 3, 2008", rating: 5.0, image: #imageLiteral(resourceName: "flames"))
        
        let animalFarm = BookModel.init(title: "Animal Farm", author: "George Orwell", numberOfPages: 112, publisher: "Independent", dateReleased: "Augist 17, 1945", rating: 3.7, image: #imageLiteral(resourceName: "animal"))
        
        books = [theCatcherInTheRye, catsCradle, whenYouAreEngulfedInFlames, animalFarm]
        return books
    }
}
