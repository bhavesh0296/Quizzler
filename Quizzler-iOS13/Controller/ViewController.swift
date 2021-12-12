//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet fileprivate weak var questionLabel: UILabel!
    @IBOutlet fileprivate weak var progressBar: UIProgressView!
    @IBOutlet fileprivate weak var trueButton: UIButton!
    @IBOutlet fileprivate weak var falseButton: UIButton!

    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.setProgress(quizBrain.getProgress(), animated: true)
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle ?? "" // True, False

        if quizBrain.checkAnswer(with: userAnswer) {
            debugPrint("Right!")
            sender.backgroundColor = UIColor.green
        } else {
            debugPrint("Wrong!")
            sender.backgroundColor = UIColor.red
        }

        quizBrain.incrementQuestion()
        progressBar.setProgress(quizBrain.getProgress(), animated: true)

        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }

    @objc fileprivate func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }

}

