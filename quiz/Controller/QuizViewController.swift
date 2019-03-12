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
    var TotalQuestion = 5
    var quiz: Quiz? = nil
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quiz?.questions.shuffle()
        nextQuestion()
    }
    
    
    func checkAnswer(_ answer:Int) -> Bool{
        return answer == 0
    }
    
    func nextQuestion(){
        TextQuestion.text = quiz?.questions[current].text
        
        let answers = [Answer1, Answer2, Answer3].shuffled()
        var id = 0
        
        for item in answers {
            item?.setTitle(quiz?.questions[current].answers[id], for: .normal)
            item?.tag = id
            id += 1
        }

    }
    
    
    
    
    @IBAction func pick(_ sender: Any) {
        let a = sender as! UIButton
        
        if checkAnswer(a.tag) {
            score += 10
            Score.text = String(score)
        }
        
        current += 1
        
        if(TotalQuestion > current){
            Progress.text = "\(current + 1)/\(TotalQuestion)  "
            nextQuestion()
        }else{
            TextQuestion.text = "Fim do quiz"

            Answer1.setTitle("", for: .normal)
            Answer2.setTitle("", for: .normal)
            Answer3.setTitle("", for: .normal)
            
            Answer1.isEnabled = false
            Answer2.isEnabled = false
            Answer3.isEnabled = false
        }
    }
    
}
