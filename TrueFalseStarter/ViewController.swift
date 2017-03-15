//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Pasan Premaratne on 3/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let questionsPerRound = 10 //This can not be set to more than 10
    var questionsAsked = 0
    var correctQuestions = 0
    var gameSound: SystemSoundID = 0
    let questions: Questions = Questions()
    var currentQuestionAndAnswers: QuestionAndAnswers = QuestionAndAnswers(question: "", option1: "", option2: "", option3: "", option4: "", answer: 0)
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        playGameStartSound()
        displayQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuestion() {
        currentQuestionAndAnswers = questions.randomQuestion()
        questionField.text = currentQuestionAndAnswers.question
        option1Button.setTitle(currentQuestionAndAnswers.option1, for: UIControlState.normal)
        option2Button.setTitle(currentQuestionAndAnswers.option2, for: UIControlState.normal)
        option3Button.setTitle(currentQuestionAndAnswers.option3, for: UIControlState.normal)
        option4Button.setTitle(currentQuestionAndAnswers.option4, for: UIControlState.normal)
        playAgainButton.isHidden = true
    }
    
    func displayScore() {
        // Hide the answer buttons
        option1Button.isHidden = true
        option2Button.isHidden = true
        option3Button.isHidden = true
        option4Button.isHidden = true
        
        // Display play again button
        playAgainButton.isHidden = false
        
        questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        // Increment the questions asked counter
        questionsAsked += 1
        
        let correctAnswer = currentQuestionAndAnswers.answer
        
        if (sender === option1Button && correctAnswer == 1) || (sender === option2Button && correctAnswer == 2) || (sender === option3Button && correctAnswer == 3) || (sender === option4Button && correctAnswer == 4) {
            correctQuestions += 1
            questionField.text = "Correct!"
        } else {
            questionField.text = "Sorry, wrong answer!"
        }
        
        loadNextRoundWithDelay(seconds: 1)
    }
    
    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
    }
    
    @IBAction func playAgain() {
        // Show the answer buttons
        option1Button.isHidden = false
        option2Button.isHidden = false
        option3Button.isHidden = false
        option4Button.isHidden = false
        
        questionsAsked = 0
        correctQuestions = 0
        questions.resetQuestions()
        nextRound()
    }
    

    
    // MARK: Helper Methods
    
    func loadNextRoundWithDelay(seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
    
    func loadGameStartSound() {
        let pathToSoundFile = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundURL = URL(fileURLWithPath: pathToSoundFile!)
        AudioServicesCreateSystemSoundID(soundURL as CFURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
}

