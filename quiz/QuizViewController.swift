//
//  QuizViewController.swift
//  quiz
//
//  Created by PUCPR on 08/03/19.
//  Copyright © 2019 juliano. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var TextQuestion: UILabel!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var Progress: UILabel!
    
    var current = 0
    var TotalQuestion = 3
    let quiz: Quiz = Quiz()
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //quiz = Quiz()
        

        TextQuestion.text = quiz.questions[current].text
        Answer1.setTitle(quiz.questions[current].answers[0], for: .normal)
        Answer1.tag = 0
        
        Answer2.setTitle(quiz.questions[current].answers[1], for: .normal)
        Answer2.tag = 1
        
        Answer3.setTitle(quiz.questions[current].answers[2], for: .normal)
        Answer3.tag = 2
    }
    
    
    func checkAnswer(_ answer:Int) -> Bool{
        return answer == 0
    }
    
    func nextQuestion(){
        
        
        
        TextQuestion.text = quiz.questions[current].text
        Answer1.setTitle(quiz.questions[current].answers[0], for: .normal)
        Answer1.tag = 0
        
        Answer2.setTitle(quiz.questions[current].answers[1], for: .normal)
        Answer2.tag = 1
        
        Answer3.setTitle(quiz.questions[current].answers[2], for: .normal)
        Answer3.tag = 2
        
        
        
    }
    
    
    
    
    @IBAction func pick(_ sender: Any) {
        let a = sender as! UIButton
        
        if checkAnswer(a.tag) {
            score += 10
            Score.text = String(score)
        }
        
        current += 1
        
        Progress.text = "\(current + 1)/5"
        
        if(TotalQuestion > current){
            nextQuestion()
        }else{
            TextQuestion.text = "Fim do quiz"
            Answer1.isEnabled = false
            Answer2.isEnabled = false
            Answer3.isEnabled = false
            
            Answer1.setTitle("", for: .normal)
            Answer2.setTitle("", for: .normal)
            Answer3.setTitle("", for: .normal)
        }
    }
    
}
