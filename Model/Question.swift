//
//  Question.swift
//  MultiFact
//
//  Created by Bartek on 2/6/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let rightAnswer: String
    
    
    //The string can be an array but the value type can not
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        rightAnswer = correctAnswer
        
    }
}

