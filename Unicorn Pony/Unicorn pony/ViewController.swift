//
//  ViewController.swift
//  Unicorn Pony
//
//  Created by Kevin Borges on 07/06/2018.
//  Copyright (c) 2018 Borges Applications. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "You found a unicorn"
    let answer1a = "give glasses"
    let answer1b = "comb it"
    
    
    let story2 = "i be fluffy"
    let answer2a = "give glasses"
    let answer2b = "wanna ride me?"
    
    let story3 = "get my shades"
    let answer3a = "wanna see me fly"
    let answer3b = "dinosaur?"
    
    let story4 = "ride the unicorn"
    let story5 = "ride dino off in sunset"
    let story6 = "pegasus flies off to the rainbow"
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    // TODO Step 5: Initialise instance variables here
    
    var storyIndex = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
        reset()
        
        resetBtn.isHidden = true
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        
        if sender.tag == 1 && (storyIndex == 1 || storyIndex == 2) {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
            image.image = #imageLiteral(resourceName: "dab") //dab
        } else if sender.tag == 2 && storyIndex == 1 {
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 2
            image.image = #imageLiteral(resourceName: "Fluffy") //fluffy
        } else if sender.tag == 1 && storyIndex == 3 {
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
            image.image = #imageLiteral(resourceName: "peg") //peg
        } else if sender.tag == 2 && storyIndex == 3 {
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
            image.image = #imageLiteral(resourceName: "rideDino") //rideDino
        } else if sender.tag == 2 && storyIndex == 2 {
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
            image.image = #imageLiteral(resourceName: "rideUni") //rideUni
        }
        
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            resetBtn.isHidden = false
        }
        
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }


    @IBAction func resetPressed(_ sender: UIButton) {
    }
    
    func reset() {
        storyIndex = 1
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        image.image = #imageLiteral(resourceName: "rainbow")
    }
}
