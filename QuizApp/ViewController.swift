//
//  ViewController.swift
//  QuizApp
//
//  Created by Dirk Meyer on 10.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var questionCountLabel: UILabel!
    @IBOutlet weak var progressBarView: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // Setup Button aufrufen
        SetupButton()
        
    }

    //MARK: Setup Button
    func SetupButton(){
        // Tag vergeben
        answerButton1.tag = 1
        answerButton2.tag = 2
        answerButton3.tag = 3
        
        answerButton1.layer.cornerRadius = 25
        answerButton1.layer.borderWidth = 3
        answerButton1.layer.borderColor = UIColor.black.cgColor
        
        answerButton2.layer.cornerRadius = 25
        answerButton2.layer.borderWidth = 3
        answerButton2.layer.borderColor = UIColor.black.cgColor
        
        answerButton3.layer.cornerRadius = 25
        answerButton3.layer.borderWidth = 3
        answerButton3.layer.borderColor = UIColor.black.cgColor
        
    }
    
    
    
    
    // MARK: Actions
    @IBAction func answerButton_Tapped(_ sender: UIButton) {
    }
    
    // MARK: Create Questions Object
    func createQuestionObject (){
        let question1 = Question(text: "Hauptstadt von Deutschland?")
        question1.answer1 = "Berlin"
        question1.answer2 = "Hamburg"
        question1.answer3 = "München"
        question1.correvtAnswerTag = 1
        
        let question2 = Question(text: "Hauptstadt von Polen?")
        question2.answer1 = "Krakau"
        question2.answer2 = "Warschau"
        question2.answer3 = "Moskau"
        question2.correvtAnswerTag = 2
        
        let question4 = Question(text: "Hauptstadt von Össterreich?")
        question4.answer1 = "Wien"
        question4.answer2 = "Hamburg"
        question4.answer3 = "München"
        question4.correctAnswerTag = 1
        
        let question5 = Question(text: "Hauptstadt von Bulgarien?")
        question5.answer1 = "Berlin"
        question5.answer2 = "Sofia"
        question5.answer3 = "München"
        question5.correctAnswerTag = 2
        
        let question6 = Question(text: "Hauptstadt von Ungarn?")
        question6.answer1 = "Budapest"
        question6.answer2 = "Hamburg"
        question6.answer3 = "München"
        question6.correctAnswerTag = 1
        
        let question7 = Question(text: "Hauptstadt von Tschechien?")
        question7.answer1 = "Berlin"
        question7.answer2 = "Prag"
        question7.answer3 = "München"
        qustion7.correctAnswerTag = 2
        
    }
    
    
    
    
    
}

  
