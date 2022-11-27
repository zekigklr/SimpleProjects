//
//  ViewController.swift
//  CatchTheKennyGame
//
//  Created by Zeki Gökler on 27.11.2022.
//

import UIKit

class ViewController: UIViewController {

    
    var score = 0
    var timer = Timer()
    var counter = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Score : \(score)"
        
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(inCreaseScore))

        
        
        kenny1.addGestureRecognizer(recognizer1)
        kenny2.addGestureRecognizer(recognizer2)
        kenny3.addGestureRecognizer(recognizer3)
        kenny4.addGestureRecognizer(recognizer4)
        kenny5.addGestureRecognizer(recognizer5)
        kenny6.addGestureRecognizer(recognizer6)
        kenny7.addGestureRecognizer(recognizer7)
        kenny8.addGestureRecognizer(recognizer8)
        kenny9.addGestureRecognizer(recognizer9)
        
        counter = 10
        timeLabel.text = "\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)

        
    }
    @objc func inCreaseScore() {
        score += 1
        scoreLabel.text = "Score : \(score )"
    }
    
    @objc func countDown() {
        counter -= 1
        timeLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            
            //Alert
            
            let alert = UIAlertController(title: "Time's Up.", message: "Do you want to play again ?", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "Ok.", style: .cancel)
            let replayButton = UIAlertAction(title: "Replay", style: .default) { UIAlertAction in
                
                    self.highScoreLabel.text = "\(self.score)"
               
                self.counter = 10
                self.timeLabel.text = "\(self.counter)"
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true)
        }
        
    }

}

