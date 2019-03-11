//
//  ViewController.swift
//  quiz
//
//  Created by juliano on 06/03/19.
//  Copyright © 2019 juliano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quiz = Quiz()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "listQuestions" {
            let next = segue.destination as! QuestionsTableViewController
            next.questions = quiz.questions
        }
        
        
    }


}

