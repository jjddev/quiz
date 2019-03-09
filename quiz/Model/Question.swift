//
//  Question.swift
//  quiz
//
//  Created by juliano on 07/03/19.
//  Copyright © 2019 juliano. All rights reserved.
//

import Foundation

class Question {
    var text: String
    var answers: [String]
    
    init(_ text:String, _ answers: [String]){
        self.text = text
        self.answers = answers
    }
}
