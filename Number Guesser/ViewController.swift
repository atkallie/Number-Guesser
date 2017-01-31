//
//  ViewController.swift
//  Number Guesser
//
//  Created by Ahmed T Khalil on 11/20/16.
//  Copyright © 2016 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var inputGuess: UITextField!
    @IBOutlet var answer: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        let randomNum=arc4random_uniform(11)
        
        if inputGuess.text!==String(randomNum){
            answer.text="You are correct"
            
        }else{
            answer.text="Sorry, but the correct answer is " + String(randomNum)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

