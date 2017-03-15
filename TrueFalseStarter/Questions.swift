//
//  QuestionProvider.swift
//  TrueFalseStarter
//
//  Created by Kavan Seggie on 13/03/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import GameKit

class Questions {
    
    let questionAndAnswer1: QuestionAndAnswers
    let questionAndAnswer2: QuestionAndAnswers
    let questionAndAnswer3: QuestionAndAnswers
    let questionAndAnswer4: QuestionAndAnswers
    let questionAndAnswer5: QuestionAndAnswers
    let questionAndAnswer6: QuestionAndAnswers
    let questionAndAnswer7: QuestionAndAnswers
    let questionAndAnswer8: QuestionAndAnswers
    let questionAndAnswer9: QuestionAndAnswers
    let questionAndAnswer10: QuestionAndAnswers
    let questions: [QuestionAndAnswers]
    
    init() {
        self.questionAndAnswer1 = QuestionAndAnswers(question: "This was the only US President to serve more than two consecutive terms.",
                                                     option1: "George Washington",
                                                     option2: "Franklin D. Roosevelt",
                                                     option3: "Woodrow Wilson",
                                                     option4: "Andrew Jackson",
                                                     answer: 2)
        self.questionAndAnswer2 = QuestionAndAnswers(question: "Which of the following countries has the most residents?",
                                                     option1: "Nigeria",
                                                     option2: "Russia",
                                                     option3: "Iran",
                                                     option4: "Vietnam",
                                                     answer: 1)
        self.questionAndAnswer3 = QuestionAndAnswers(question: "In what year was the United Nations founded?",
                                                     option1: "1918",
                                                     option2: "1919",
                                                     option3: "1945",
                                                     option4: "1954",
                                                     answer: 3)
        self.questionAndAnswer4 = QuestionAndAnswers(question: "The Titanic departed from the United Kingdom, where was it supposed to arrive?",
                                                     option1: "Paris",
                                                     option2: "Washington D.C.",
                                                     option3: "New York City",
                                                     option4: "Boston",
                                                     answer: 3)
        self.questionAndAnswer5 = QuestionAndAnswers(question: "Which nation produces the most oil?",
                                                     option1: "Iran",
                                                     option2: "Iraq",
                                                     option3: "Brazil",
                                                     option4: "Canada",
                                                     answer: 4)
        self.questionAndAnswer6 = QuestionAndAnswers(question: "Which country has most recently won consecutive World Cups in Soccer?",
                                                     option1: "Italy",
                                                     option2: "Brazil",
                                                     option3: "Argetina",
                                                     option4: "Spain",
                                                     answer: 2)
        self.questionAndAnswer7 = QuestionAndAnswers(question: "Which of the following rivers is longest?",
                                                     option1: "Yangtze",
                                                     option2: "Mississippi",
                                                     option3: "Congo",
                                                     option4: "Mekong",
                                                     answer: 2)
        self.questionAndAnswer8 = QuestionAndAnswers(question: "Which city is the oldest?",
                                                     option1: "Mexico City",
                                                     option2: "Cape Town",
                                                     option3: "San Juan",
                                                     option4: "Sydney",
                                                     answer: 1)
        self.questionAndAnswer9 = QuestionAndAnswers(question: "Which country was the first to allow women to vote in national elections?",
                                                     option1: "Poland",
                                                     option2: "United States",
                                                     option3: "Sweden",
                                                     option4: "Senegal",
                                                     answer: 1)
        self.questionAndAnswer10 = QuestionAndAnswers(question: "Which of these countries won the most medals in the 2012 Summer Games?",
                                                      option1: "France",
                                                      option2: "Germany",
                                                      option3: "Japan",
                                                      option4: "Great Britian",
                                                      answer: 4)
        
        self.questions = [questionAndAnswer1, questionAndAnswer2, questionAndAnswer3, questionAndAnswer4, questionAndAnswer5, questionAndAnswer6, questionAndAnswer7, questionAndAnswer8, questionAndAnswer9, questionAndAnswer10]
        
    }
    
    func randomQuestion(availableQuestions: [Int]) -> QuestionAndAnswers {
        var isQuestionUsed: Bool = false
        var randomNumber: Int
        repeat {
            randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
            for number in usedQuestions {
           //     if usedQuestions.number == randomNumber {
                    isQuestionUsed = true
                    break
                }
            }
        } while isQuestionUsed == true
        return questions[randomNumber]
    }
}



