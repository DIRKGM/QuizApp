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
    }

    //MARK: Setup Button
    func SetupButton(){
        // Tag vergeben
        
    }
    
    
    // MARK: Actions
    @IBAction func answerButton_Tapped(_ sender: UIButton) {
    }
    
    
    
    
}

  
