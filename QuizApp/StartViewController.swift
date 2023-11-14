//
//  StartViewController.swift
//  QuizApp
//
//  Created by Dirk Meyer on 14.11.23.
//

import UIKit

class StartViewController: UIViewController {

    //MARK: Outlets
    
    @IBOutlet weak var highscoreButton: UIButton!
    @IBOutlet weak var startgameButto: UIButton!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Setup Button
        highscoreButton.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
        highscoreButton.layer.borderColor = UIColor.white.cgColor
        highscoreButton.layer.cornerRadius = 25
        highscoreButton.layer.borderWidth = 3
            
        startgameButto.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
        startgameButto.layer.borderColor = UIColor.white.cgColor
        startgameButto.layer.cornerRadius = 25
        startgameButto.layer.borderWidth = 3
        
        //MARK: Label unsichtbar machen
        highscoreLabel.alpha = 0.0
        
    }
    //MARK: Show Highscore
    @IBAction func highscoreButton_Tapped(_ sender: UIButton) {
        UIView.animate(withDuration: 1) {
            self.highscoreLabel.alpha = 1.0
        }
    }
    
    //MARK: Start Game
    
    @IBAction func startgameButtron_Tapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "startgame", sender: nil)
    }
    

}
