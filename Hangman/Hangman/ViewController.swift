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
        //print(hiddenWord)
        
        var hiddenWord: [String] = Array(repeating: "_ ", count: inputWord.text!.count)

        blankSpaces.text = hiddenWord.joined()
        
        print(hiddenWord)
       // return hiddenWord
    }
    
    
    func replaceWithLetter() {
        var hiddenWordIndex = [Int]()
//        if letterGuess.text != nil {
//        for (index, char) in hiddenWord.enumerated() {
//            if hiddenWordIndex.contains(index) {
//                hiddenWord[index] = char
//            }
//            }
//        }
        
        
        
        
      
//
//
////
////        for (index, _) in hiddenWord.enumerated() {
////            if hiddenWordIndex.contains(index) {
////                hiddenWord[index] = playerGuess // _ _ _ _ _  => _ p p _ _
////            }
//        for (index, char) in inputWord.text!.enumerated() {
//            if letterGuess!.text == String(char) {
//                hiddenWordIndex.append(index)
//            }
//        }
//
        for (index, _) in hiddenWord.enumerated() {
            if hiddenWordIndex.contains(index) {
                hiddenWord[index] = Character(letterGuess!.text!) // _ _ _ _ _  => _ p p _ _
            }
        }
        print(String(hiddenWord))
        blankSpaces.text = String(hiddenWord)
//
        
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
