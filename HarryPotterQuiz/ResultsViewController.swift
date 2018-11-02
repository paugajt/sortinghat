//
//  ResultsViewController.swift
//  HarryPotterQuiz
//
//  Created by Pauga, Justin on 10/31/18.
//  Copyright © 2018 Pauga. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultDescriptionLabel: UILabel!
    
    var responses = [Answer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculateResult()
        // Do any additional setup after loading the view.
    }

    func calculateResult() {
        
        var frequencyOfAnswers: [HogwartsHouse : Int] = [:]
        
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        
        guard let mostCommonAnswer = frequentAnswersSorted.first?.key
            else { return }
        
        resultAnswerLabel.text = "\(mostCommonAnswer)!"
        resultDescriptionLabel.text = mostCommonAnswer.explanation
        
        switch mostCommonAnswer {
        case .Ravenclaw:
            resultImage.image = UIImage(named: "ravenclaw")
        case .Gryffindor:
            resultImage.image = UIImage(named: "gryffindor")
        case .Hufflepuff:
            resultImage.image = UIImage(named: "hufflepuff")
        case .Slytherin:
            resultImage.image = UIImage(named: "slytherin")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
