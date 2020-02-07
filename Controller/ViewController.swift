//
//  ViewController.swift
//  MultiFact
//
//  Created by Bartek on 2/6/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceThree: UIButton!
    
    var quizBrain = QuizBrain()
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //keeping track of answers
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        //This is checking if the second part of the array "True" or false matches the current title of button
    
        
        if userGotItRight{
            sender.backgroundColor = UIColor.green
            
        }else {
            sender.backgroundColor = UIColor.red
            
        }
        
        quizBrain.nextQuestion()
        
        
       
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
            
         
        
        
        
    }// this is the method changing it back to clear
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        choiceOne.setTitle(quizBrain.getChoiceOne(), for: .normal)
        choiceTwo.setTitle(quizBrain.getChoiceTwo(), for: .normal)
        choiceThree.setTitle(quizBrain.getChoiceThree(), for: .normal)
        
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        //This will clear the color after green
        progressbar.progress = quizBrain.getProgress()
        choiceOne.backgroundColor = UIColor.clear
        choiceTwo.backgroundColor = UIColor.clear
        choiceThree.backgroundColor = UIColor.clear
    }
    
}

