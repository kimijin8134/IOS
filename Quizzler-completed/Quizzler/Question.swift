//
//  Question.swift
//  Quizzler
//
//  Created by Student on 20/10/2015.
//  Copyright © 2015 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}