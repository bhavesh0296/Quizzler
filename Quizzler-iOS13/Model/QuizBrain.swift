//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by bhavesh on 12/12/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    private let quiz = [Question(text: "1- Four + two equal to Six.", answer: "True"),
                Question(text: "2- Five - Three greater than One", answer: "True"),
                Question(text: "3- Seven * Three euqual to Twenty One", answer: "True"),
                Question(text: "4- Four + two equal to Six.", answer: "True"),
                Question(text: "5- Five - Three greater than One", answer: "True"),
                Question(text: "6- Seven * Three euqual to Twenty One", answer: "True"),
                Question(text: "7- Four + two equal to Six.", answer: "True"),
                Question(text: "8- Five - Three greater than One", answer: "True"),
                Question(text: "9- Seven * Three euqual to Twenty One", answer: "True")]

    private var questionNumber = 0
    private var score = 0

    mutating func checkAnswer(with userAnswer: String) -> Bool {
        let actualAnser = quiz[questionNumber].answer
        if userAnswer == actualAnser {
            score += 1
            return true
        } else {
            return false
        }
    }

    func getProgress() -> Float {
        return Float(questionNumber+1)/Float(quiz.count)
    }

    mutating func incrementQuestion(){
        if quiz.count > questionNumber+1 {
            questionNumber = questionNumber + 1
        } else {
            questionNumber = 0
            score = 0
        }
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }

    func getScore() -> String {
        return "Score:" + " \(score)"
    }
}
