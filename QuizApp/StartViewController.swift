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
    @IBOutlet weak var capitalCityLabel: UIButton!
    @IBOutlet weak var knowledgeLabel: UIButton!
    @IBOutlet weak var germanyLabel: UIButton!
    @IBOutlet weak var categoryLabel: UIButton!
    
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
        
        categoryLabel.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
        categoryLabel.layer.borderColor = UIColor.white.cgColor
        categoryLabel.layer.cornerRadius = 25
        categoryLabel.layer.borderWidth = 3
        
        capitalCityLabel.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
        capitalCityLabel.layer.borderColor = UIColor.white.cgColor
        capitalCityLabel.layer.cornerRadius = 25
        capitalCityLabel.layer.borderWidth = 3
    
        knowledgeLabel.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
        knowledgeLabel.layer.borderColor = UIColor.white.cgColor
        knowledgeLabel.layer.cornerRadius = 25
        knowledgeLabel.layer.borderWidth = 3
        
        germanyLabel.backgroundColor = UIColor(white: 1.0, alpha: 0.8)
        germanyLabel.layer.borderColor = UIColor.white.cgColor
        germanyLabel.layer.cornerRadius = 25
        germanyLabel.layer.borderWidth = 3
    
        //MARK: Label unsichtbar machen
        highscoreLabel.alpha = 0.0
        
        //MARK: Category Label unsichtbar
        germanyLabel.alpha = 0.0
        knowledgeLabel.alpha = 0.0
        capitalCityLabel.alpha = 0.0
        
        //MARK: Tags Label
        capitalCityLabel.tag = 1
        knowledgeLabel.tag = 2
        germanyLabel.tag = 3
        
    }
    // Vererbte func von viewDidLoad
    override func viewDidAppear(_ animated: Bool) {
        loadDateFromUser()
    }
    
    
    //MARK: Show Highscore
    @IBAction func highscoreButton_Tapped(_ sender: UIButton) {
        UIView.animate(withDuration: 1) {
            self.highscoreLabel.alpha = 1.0
        }
        loadDateFromUser()
    }
    
    //MARK: load user from userDefauklts / lädt automatisch den neusten Highscore in das Label
    func loadDateFromUser () {
        // Laden der Daten aus der DB
        let highScore = userDefault.double(forKey: "highScore")
        if let name = userDefault.object(forKey: "userName") as? String {
            highscoreLabel.text = "Name: \(name) Punkte: \(highScore)"
        }
        /* If let wenn dann mache --> Durch das .object kann alles mögliche enthalten sein, qussi ein Optional. as? String sagt soviel, dass ich weiß das es ein String ist und speicher mir das
         */
    }

    
    //MARK: Start Game
    @IBAction func startgameButtron_Tapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "startgame", sender: nil)
    }
    
    //MARK: Category Choose
    
    @IBAction func categoryButton_Tapped(_ sender: UIButton) {
                UIView.animate(withDuration: 0.5, animations: {
                self.germanyLabel.alpha = 1.0
            })  { (true) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.knowledgeLabel.alpha = 1.0
                }) { (true) in
                    UIView.animate(withDuration: 0.5) {
                        self.capitalCityLabel.alpha = 1.0
                    }
                }
                
            }
    }
    
    
    @IBAction func category_Tapped(_ sender: UIButton) {
            
        let tag = sender.tag
        switch tag {
        case 1:
            startgameButto.setBackgroundImage(UIImage(named: "city"), for: .normal)
        case 2:
            startgameButto.setBackgroundImage(UIImage(named: "wissen"), for: .normal)
        case 3:
            startgameButto.setBackgroundImage(UIImage(named: "deutschland"), for: .normal)
        default:
            startgameButto.setBackgroundImage(UIImage(named: "city"), for: .normal)
            
        }
    }
        
    }
