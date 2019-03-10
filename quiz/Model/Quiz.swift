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
        let q4 = Question("A montanha mais alta do mundo", ["Monte Everest", "K2", "Pico da neblina"])
        
        let q5 = Question("Campeao da copa de 1994 de futebol", ["Brasil", "Italia", "Argentina"])
        
        
        self.questions.append(q1)
        self.questions.append(q2)
        self.questions.append(q3)
        self.questions.append(q4)
        self.questions.append(q5)
        
    }
    
    func start (){
        
    }
    
    
    
}
