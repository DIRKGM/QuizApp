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
    
    // MARK: Variable
    var questions = [Question]()
    var questionNumber = 0
    var score = 0
   
    // Ab hier wird der View geladen
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setup Button aufrufen
        SetupButton()
        
        // Fragen erstellen
        createQuestionObject()
        
        // Erste Frage anzeigen
        questionLabel.text = questions[0].questionText
        answerButton1.setTitle(questions[0].answer1, for: .normal)
        answerButton2.setTitle(questions[0].answer2, for: .normal)
        answerButton3.setTitle(questions[0].answer3, for: .normal)
        
        // MARK: UI einrichten
        scoreLabel.text = "Score: 0"
        questionCountLabel.text = "1 / \(questions.count)"
        
    }
    
    //MARK: Setup Button
    func SetupButton(){
        // Tag vergeben
        answerButton1.tag = 1
        answerButton2.tag = 2
        answerButton3.tag = 3
        
        answerButton1.layer.cornerRadius = 25
        answerButton1.layer.borderWidth = 3
        answerButton1.layer.borderColor = UIColor.white.cgColor
        
        answerButton2.layer.cornerRadius = 25
        answerButton2.layer.borderWidth = 3
        answerButton2.layer.borderColor = UIColor.white.cgColor
        
        answerButton3.layer.cornerRadius = 25
        answerButton3.layer.borderWidth = 3
        answerButton3.layer.borderColor = UIColor.white.cgColor
        
    }
    
    // MARK: Actions
    @IBAction func answerButton_Tapped(_ sender: UIButton) {
        
        let answerTag = sender.tag
        
        // Antwort prüfen
        checkAnswer(answerTag: answerTag)
        
        // nächste Fragen laden
        nextQuestion()
        
    }
    
    func checkAnswer(answerTag: Int){
        if answerTag == questions[questionNumber].correctAnswerTag{
            score += 10
        } else {
            
        }
        questionNumber += 1
    }
    
    func nextQuestion(){
        if questionNumber < questions.count {
            questionLabel.text = questions[questionNumber].questionText
            answerButton1.setTitle(questions[questionNumber].answer1, for: .normal)
            answerButton2.setTitle(questions[questionNumber].answer2, for: .normal)
            answerButton3.setTitle(questions[questionNumber].answer3, for: .normal)
            updateUI()
        } else {
            // Quiz neustarten
            createRestartAllertBox()        }
    }
    
    //MARK: Restart Quiz
    func createRestartAllertBox (){
        let alert = UIAlertController(title: "Quiz Ende", message: "Möchtest du das Quiz Neustarten?", preferredStyle: .alert)
        
        let restartAction = UIAlertAction(title: "Neustart", style: .default){ (action) in
            self.restart()
        }
        let closedAction = UIAlertAction(title: "Schließen", style: .default){ (action) in
        }
        alert.addAction(restartAction)
        alert.addAction(closedAction)
        self.present(alert, animated: true, completion: nil)
    }
    func restart (){
        questionNumber = 0
        score = 0
        questionCountLabel.text = "1 / \(questions.count)"
        nextQuestion()
}
    
    //MARK: Update UI
    func updateUI(){
        //Score wird erweitert bzw. läuft mit
        scoreLabel.text = "Score: \(score)"
        questionCountLabel.text = "\(questionNumber + 1) / \(questions.count)"
        // Balken läuft mit / wächst
        let widthIphone = self.view.frame.size.width
        let widthProgressCountView = Int(widthIphone) / questions.count
        progressBarView.frame.size.width = CGFloat(widthProgressCountView) * CGFloat(questionNumber + 1)
        
    }
    
    // MARK: Create Questions Object
    func createQuestionObject (){
        let question1 = Question(text: "Hauptstadt von Deutschland?")
        question1.answer1 = "Berlin"
        question1.answer2 = "Hamburg"
        question1.answer3 = "München"
        question1.correctAnswerTag = 1
        
        let question2 = Question(text: "Hauptstadt von Polen?")
        question2.answer1 = "Krakau"
        question2.answer2 = "Warschau"
        question2.answer3 = "Moskau"
        question2.correctAnswerTag = 2
        
        let question3 = Question(text: "Hauptstadt von Belgien?")
        question3.answer1 = "Berlin"
        question3.answer2 = "Hamburg"
        question3.answer3 = "Brüssel"
        question3.correctAnswerTag = 3
        
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
        question7.correctAnswerTag = 2
        
        // Fragen in Array hinzufügen
        questions.append(question1)
        questions.append(question2)
        questions.append(question3)
        questions.append(question4)
        questions.append(question5)
        questions.append(question6)
        questions.append(question7)
    }
    
    
    
    
    
}

  
