//
//  ViewController.swift
//  SwiftFirstApp
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAnswer(sender: AnyObject) {
        answerLbl.text = anwers[curr]
    }
    @IBAction func showQuestion(sender: AnyObject) {
        ++curr
        if curr == questions.count {
            curr = 0
        }
        
        questionLbl.text = questions[curr]
    }
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var answerLbl: UILabel!
    
    var questions = ["question1","question2","question3"]//定义一个questions包括字符串的数组
    var anwers = ["answer1","answer2","question3"]
    var curr = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLbl.text = questions[curr];
        answerLbl.text = "?";
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

