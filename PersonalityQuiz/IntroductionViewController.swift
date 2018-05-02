//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Philine Wairata on 25/04/2018.
//  Copyright © 2018 Philine Wairata. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// Unwind segue dismisses the view controllers and unwinds to the first view controller.
    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
        
    }
}

