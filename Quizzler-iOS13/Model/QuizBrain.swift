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

    func checkAnswer(with userAnswer: String) -> Bool {
        let actualAnser = quiz[questionNumber].answer
        return userAnswer == actualAnser ? true : false
    }

    func getProgress() -> Float {
        return Float(questionNumber+1)/Float(quiz.count)
    }

    mutating func incrementQuestion(){
        questionNumber = quiz.count > questionNumber+1 ? questionNumber + 1 : 0
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
}
