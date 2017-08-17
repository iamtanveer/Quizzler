//
//  ViewController.swift
//  Quizzler
//
//  Created by Tanveer Singh on 15/08/2017.
//  Copyright (c) 2017 Tanveer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    var pickedAnswer : Bool = false
    let allQuestions = QuestionBank()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }else if sender.tag == 2{
            pickedAnswer = false
        }
        
        checkAnswer()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[0].answer
        if correctAnswer == pickedAnswer {
            print("Correct")
        }else{
            print("Wrong")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
