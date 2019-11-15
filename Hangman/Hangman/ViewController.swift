//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputWord: UITextField!
    
    @IBOutlet weak var blankSpaces: UILabel!
    
    @IBOutlet weak var letterGuess: UITextField!
    
    @IBOutlet weak var hangManImage: UIImageView!
    
    var hiddenWord: [Character] = []
    var hiddenW2: String = ""
    var misses: Int = 0
   
    
    
    
    
    
//    var guessThis: String {
//
//    }
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    inputWord.delegate = self
    letterGuess.delegate = self
    //printHangman()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func inputField(_ sender: UITextField) {
        
    }
    
    
    func printHangman() {
        misses += 1
        switch misses {
        case 1:
            hangManImage.image = #imageLiteral(resourceName: "hang1")
        case 2:
            hangManImage.image = #imageLiteral(resourceName: "hang2")
        case 3:
            hangManImage.image = #imageLiteral(resourceName: "hang3")
        case 4:
            hangManImage.image = #imageLiteral(resourceName: "hang4")
        case 5:
            hangManImage.image = #imageLiteral(resourceName: "hang5")
        case 6:
            hangManImage.image = #imageLiteral(resourceName: "hang6")
        case 7:
            hangManImage.image = #imageLiteral(resourceName: "hang7")
        default:
            print()
        }
        
    }
    
    // take the word written and place it as underscores
    
    func underScoreReplacement()  {
        //var hiddenWord: [Character] = Array(repeating: "*", count: inputWord.text!.count)
        //print(hiddenWord)
        
        var hiddenWordString = inputWord.text?.components(separatedBy: "")
        
        for each in hiddenWordString! {
            for _ in each {
            hiddenW2.append("_ ")
        }
        }
       
        blankSpaces.text = hiddenW2
        print(inputWord.text!)
       // return hiddenWord
    }
    
    
    func replaceWithLetter() {
//        var hiddenWordIndex = [Int]()
//        for (index, _) in hiddenWord {
//            if hiddenWordIndex.contains(index) {
//                hiddenWord[index] =
//            }
//        }
        
        
//
//        for (index, _) in hiddenWord.enumerated() {
//            if hiddenWordIndex.contains(index) {
//                hiddenWord[index] = playerGuess // _ _ _ _ _  => _ p p _ _
//            }

        
        
        
    }
    
    
    func checkAnswer() {
//
//        if inputWord.contains(letterGuess) {
//            for (index, letter) in inputWord.text!.enumerated {
//
//            }
//        }
        
        
        
    }
    
    
    
  
}


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
       if inputWord != nil {
        resignFirstResponder()
        underScoreReplacement()
        
        if let textfield = letterGuess {
        printHangman()
        }
    }
     return true
}
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       // let maxCharacters = 1
        
       // if let textfield = letterGuess {
            return true
        }
       
    }
    
    
    
    
//}
