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
    var questionNumber: Int = 0
    
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
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
        
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if questionNumber < 13 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }else{
            print("End of Quiz")
            questionNumber = 0
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            print("Correct")
        }else{
            print("Wrong")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
