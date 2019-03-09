//
//  Quiz.swift
//  quiz
//
//  Created by juliano on 07/03/19.
//  Copyright © 2019 juliano. All rights reserved.
//

import Foundation

class Quiz {
    var questions: [Question] = []
    
    
    init(){
        
        let q1 = Question("Qual a capital do Brasil?", ["Brasilia", "Curitiba", "Sao Paulo"])
        let q2 = Question("2 + 2 = ?", ["4", "5", "8"])
        let q3 = Question("Qual a capital do parana", ["Curitiba", "Sao Paulo", "Rio de Janeiro"])
        
        self.questions.append(q1)
        self.questions.append(q2)
        self.questions.append(q3)
        
    }
    
    func start (){
        
    }
    
    
    
}
