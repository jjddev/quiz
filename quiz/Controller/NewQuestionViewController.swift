//
//  NewQuestionViewController.swift
//  quiz
//
//  Created by juliano on 10/03/19.
//  Copyright © 2019 juliano. All rights reserved.
//

import UIKit

class NewQuestionViewController: UIViewController {
    
    var question: Question?
    var quiz: Quiz?
    var id = -1
    var owner: QuestionsTableViewController?
        
    @IBOutlet weak var Answer1: UITextField!
    @IBOutlet weak var Answer2: UITextField!
    @IBOutlet weak var Answer3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Answer1.text = question?.answers[0]
        Answer2.text = question?.answers[1]
        Answer3.text = question?.answers[2]
  
    }
    
    
    func save(){
        let a1 = Answer1.text!
        let a2 = Answer2.text!
        let a3 = Answer3.text!
        
        let q = Question("Texto padrao...", [a1, a2, a3])
        
        
        if id == -1 {
            quiz?.questions.append(q)
        }else{
            quiz?.questions[id] = q
        }
        
        self.owner?.quiz = quiz
        
    }
    
    @IBAction func save(_ sender: Any) {
        save()
        self.navigationController?.popViewController(animated: false)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
