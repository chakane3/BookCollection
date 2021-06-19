//
//  ViewController.swift
//  BookCollection
//
//  Created by Chakane Shegog on 6/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    // outlets
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookDescriptionLabel: UITextView!
    
    
    // book data
    let books = BookModel.getBooks()
    
    
    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBookAtIndex(index: 0)
        // Do any additional setup after loading the view.
        //startUI()
        
    }
    
    // actions
    
    // notices when the user hits a new button and updates the UI
    @IBAction func bookChanged(_ sender: UIButton) {
        updateBookAtIndex(index: sender.tag)
    }
    
    
    // updates UI as per user request
    func updateBookAtIndex(index: Int) {
        
        // use button tags to switch between receipies
        let book = books[index]
        
        // update UI elements using the current book instance
        bookDescriptionLabel.text = book.bookDescription
        bookTitleLabel.text = book.title
        bookImage.image = book.image
        
    }
}

