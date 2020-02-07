//
//  QuizBrain.swift
//  MultiFact
//
//  Created by Bartek on 2/6/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation

struct QuizBrain {
           //[i]
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]

    
    
    
    var questionNumber = 0
    var currentScore = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].rightAnswer{
            currentScore += 1
            return true
        }else{
            return false
        }
    
        
    }
    func getScore() -> Int {
        return currentScore
    }
    func getChoiceOne() -> String {
        return quiz[questionNumber].answer[0]
    }
    func getChoiceTwo() -> String {
        return quiz[questionNumber].answer[1]
    }
    func getChoiceThree() -> String {
        return quiz[questionNumber].answer[2]
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    //marking this as mutating makes this the method that will change the outcome
    //questionNumber is a VAR within this struct and thats why this will be mutating !!!
    mutating func nextQuestion()  {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else {
            questionNumber = 0
            currentScore = 0
        }
    }
    
}
