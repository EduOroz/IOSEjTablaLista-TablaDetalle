//
//  Recipe.swift
//  MisRecetas
//
//  Created by user125877 on 21/4/17.
//  Copyright © 2017 user125877. All rights reserved.
//

import Foundation
import UIKit

class Recipe: NSObject{
    
    var name: String
    var time: String
    var ingredients : [String]
    var steps: [String]
    var rating: String
    var image: UIImage?
    
    init(name: String, time:String, ingredients: [String], steps: [String], rating: String, image: UIImage) {
        self.name = name
        self.time = time
        self.ingredients = ingredients
        self.steps = steps
        self.rating = rating
        self.image = image
    }
}

