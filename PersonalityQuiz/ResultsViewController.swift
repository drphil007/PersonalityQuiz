//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Philine Wairata on 25/04/2018.
//  Copyright © 2018 Philine Wairata. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // Outlets that update the label's text.
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    var responses: [Answer]!

    /// Holds frequency of each response.
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// Calculates final outcome of quiz.
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType:Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
}
