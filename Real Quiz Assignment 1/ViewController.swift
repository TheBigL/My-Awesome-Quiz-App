//
//  ViewController.swift
//  Real Quiz Assignment 1
//
//  Created by Leban on 2017-01-22.
//  Copyright © 2017 Leban. All rights reserved.
//

import UIKit





var numberOfQuestions: Double = 0;
var guesses: Int = 0;
var score: Int = 0;
var selectedCategory = ""






class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var guessesSeg: UISegmentedControl!
    
    @IBAction func exitSeg(segue: UIStoryboardSegue)
    {
        let categoryView = segue.source as! CategoryView
        selectedCategory = categoryView.SelectedCategory
        categoryLabel.text = selectedCategory
    }
    
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    @IBOutlet weak var quizDescription: UILabel!
    
    @IBOutlet weak var levelDescription: UILabel!
    
    @IBAction func onModeSegChanged(_ sender: UISegmentedControl)
    {
        if(guessesSeg.selectedSegmentIndex == 0)
        {
            guesses = 5;
            levelDescription.text = "You'll get \(guesses) guesses. Lots of chances."
        }
        
        
        else if(guessesSeg.selectedSegmentIndex == 1)
        {
            guesses = 3
            levelDescription.text = "You'll get \(guesses) guesses. Some margin of error."
        }
        
        else
        {
            guesses = 1;
            levelDescription.text = "Get 1 guess wrong and it's Game Over!"
        }
        
        
    }
    
    

    
    @IBAction func onQuestionsChanged(_ sender: UIStepper)
    {
        numberOfQuestions = sender.value
        quizDescription.text = "\(Int(numberOfQuestions)) question quiz."
    }
    

    
    
    @IBAction func onButtonPressed(_ sender: UIButton, _ segue: UIStoryboardSegue)
    {
    let quizView = segue.destination as! QuizView
    quizView.categoryLabel.text = selectedCategory
        
        
    }
    


}

