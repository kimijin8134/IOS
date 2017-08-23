//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // The UI Elements from the storyboard are already linked up for you.
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    // Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    

    // This gets called when the UIViewController is loaded into memory when the app starts
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        
    }

    // Nothing to modify here. This gets called when the system is low on memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //This action gets called when either the true or false button is pressed
    @IBAction func answerPressed(_ sender: AnyObject) {
    
        // Make pickedAnswer equal to true if the true button with tag 1 is pressed
        if sender.tag == 1 {
            pickedAnswer = true
        }
        
        // Make pickedAnswer equal to false if the false button with tag 2 is pressed
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1

        updateUI()
    }
    
    // This method will update all the views on screen (progress bar, score label, etc)
    func updateUI() {
      
        progressBar.frame.size.width = (view.frame.size.width/13)*CGFloat(questionNumber)
        progressLabel.text = String(questionNumber) + "/13"
        scoreLabel.text = "Score:" + String(score)
        
        nextQuestion()
        
        
    }

    //This method will update the question text and check if we reached the end
    func nextQuestion() {
        
        // If we have not reached the end, update the question displayed
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        
        // else show a pop up alert to the user
        } else {
            
            // 1. Create a UIAlertController named alert
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions. Do you want to start over?", preferredStyle: .alert)
            
            // 2. Make the button on this alert call the startOver() method
            let restartAction = UIAlertAction(title: "Hell Yeah", style: .default, handler: { UIAlertAction in self.startOver()
            })
            
            // 3. Add the UIAlertAction to the UIAlertController
            alert.addAction(restartAction)
            
            // 4. Present the alert to make it appear on screen
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    //This method will check if the user has got the right answer
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if pickedAnswer == correctAnswer {
            print("Yup, you got it")
            ProgressHUD.showSuccess("Correct")
            score += 1
        } else {
            print("Wrong!")
            ProgressHUD.showError("Wrong")
        }
        
        
    
    }
    
    //This method will wipe the board clean, so that users can retake the quiz.
    func startOver() {
       
        questionNumber = 0
        score = 0
        
        updateUI()
        
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}   // End of the class

