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
    
    
    
    
}

  
