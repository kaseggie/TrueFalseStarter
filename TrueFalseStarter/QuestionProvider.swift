//
//  QuestionProvider.swift
//  TrueFalseStarter
//
//  Created by Kavan Seggie on 13/03/2017.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import GameKit

struct QuestionAndAnswers{
    let question: String
    let option1: String
    let option2: String
    let option3: String
    let option4: String
    let answer: Int
}

class QuestionProvider {
    
    let questionAndAnswer1: QuestionAndAnswers
    let questionAndAnswer2: QuestionAndAnswers
    let questionAndAnswer3: QuestionAndAnswers
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
        self.questions = [questionAndAnswer1, questionAndAnswer2, questionAndAnswer3]
        
    }
    
    func randomQuestion() -> QuestionAndAnswers {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        return questions[randomNumber]
    }
}

 /*   func isCorrect(givenAnswer: Int) -> Bool {
        if givenAnswer == self.answer {
            return true
        } else {
            return false
        }
    }*/
    



/*

let questionAndAnswer4 = QuestionAndAnswers(question: <#T##String#>, option1: <#T##String#>, option2: <#T##String#>, option3: <#T##String#>, option4: <#T##String#>, answer: <#T##Int#>)
let questionAndAnswer5 = QuestionAndAnswers(question: <#T##String#>, option1: <#T##String#>, option2: <#T##String#>, option3: <#T##String#>, option4: <#T##String#>, answer: <#T##Int#>)
let questionAndAnswer6 = QuestionAndAnswers(question: <#T##String#>, option1: <#T##String#>, option2: <#T##String#>, option3: <#T##String#>, option4: <#T##String#>, answer: <#T##Int#>)
let questionAndAnswer7 = QuestionAndAnswers(question: <#T##String#>, option1: <#T##String#>, option2: <#T##String#>, option3: <#T##String#>, option4: <#T##String#>, answer: <#T##Int#>)
let questionAndAnswer8 = QuestionAndAnswers(question: <#T##String#>, option1: <#T##String#>, option2: <#T##String#>, option3: <#T##String#>, option4: <#T##String#>, answer: <#T##Int#>)
let questionAndAnswer9 = QuestionAndAnswers(question: <#T##String#>, option1: <#T##String#>, option2: <#T##String#>, option3: <#T##String#>, option4: <#T##String#>, answer: <#T##Int#>)
let questionAndAnswer10 = QuestionAndAnswers(question: <#T##String#>, option1: <#T##String#>, option2: <#T##String#>, option3: <#T##String#>, option4: <#T##String#>, answer: <#T##Int#>)


Question	Option 1	Option 2	Option 3	Option 4	Correct Answer


 
The Titanic departed from the United Kingdom, where was it supposed to arrive?	Paris	Washington D.C.	New York City	Boston	3
Which nation produces the most oil?	Iran	Iraq	Brazil	Canada	4
Which country has most recently won consecutive World Cups in Soccer?	Italy	Brazil	Argetina	Spain	2
Which of the following rivers is longest?	Yangtze	Mississippi	Congo	Mekong	2
Which city is the oldest?	Mexico City	Cape Town	San Juan	Sydney	1
Which country was the first to allow women to vote in national elections?	Poland	United States	Sweden	Senegal	1
Which of these countries won the most medals in the 2012 Summer Games?	France	Germany	Japan	Great Britian	4
 
 
 
 
 */
