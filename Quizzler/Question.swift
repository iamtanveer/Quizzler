//
//  Questions.swift
//  Quizzler
//
//  Created by Tanveer Singh on 16/08/17.
//  Copyright © 2017 Tanveer Singh. All rights reserved.
//

import Foundation

class Question{
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
