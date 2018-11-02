//
//  QuestionViewController.swift
//  HarryPotterQuiz
//
//  Created by Pauga, Justin on 10/31/18.
//  Copyright © 2018 Pauga. All rights reserved.
//

extension Collection where Indices.Iterator.Element == Index {
    
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

private let header = "akjsdfla"

import UIKit

class QuestionViewController: UIViewController {
 
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    @IBOutlet weak var singleAnswerStack: UIStackView!
    @IBOutlet weak var singleAnswerButton1: UIButton!
    @IBOutlet weak var singleAnswerButton2: UIButton!
    @IBOutlet weak var singleAnswerButton3: UIButton!
    @IBOutlet weak var singleAnswerButton4: UIButton!
    
    
    @IBOutlet weak var multipleAnswerStack: UIStackView!
    @IBOutlet weak var multipleAnswerLabel1: UILabel!
    @IBOutlet weak var multipleAnswerLabel2: UILabel!
    @IBOutlet weak var multipleAnswerLabel3: UILabel!
    @IBOutlet weak var multipleAnswerLabel4: UILabel!
    
    @IBOutlet weak var multipleAnswerSwitch1: UISwitch!
    @IBOutlet weak var multipleAnswerSwitch2: UISwitch!
    @IBOutlet weak var multipleAnswerSwitch3: UISwitch!
    @IBOutlet weak var multipleAnswerSwitch4: UISwitch!
    

    lazy var singleAnswerButtons : [UIButton] = [singleAnswerButton1, singleAnswerButton2, singleAnswerButton3, singleAnswerButton4]
    lazy var multipleAnswerLabels : [UILabel] = [multipleAnswerLabel1, multipleAnswerLabel2, multipleAnswerLabel3, multipleAnswerLabel4]
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    let questions = Questions.sorting
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleAnswerButton1:
            answersChosen.append(currentAnswers[0])
        case singleAnswerButton2:
            answersChosen.append(currentAnswers[1])
        case singleAnswerButton3:
            answersChosen.append(currentAnswers[2])
        case singleAnswerButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        nextQuestion()
    }
    
 
    @IBAction func multipleAnswerButtonPressed() {
        
        guard let question = questions[safe: questionIndex] else { return }
        
        let currentAnswers = question.answers
        
        if multipleAnswerSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multipleAnswerSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multipleAnswerSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multipleAnswerSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
        
        nextQuestion()
    }
    
    func updateUI() {
        singleAnswerStack.isHidden = true
        multipleAnswerStack.isHidden = true
        
        for button in singleAnswerButtons {
            button.setAttributedTitle(NSAttributedString(string:""), for: .normal)
        }
        
        for label in multipleAnswerLabels {
            label.text = ""
        }
        
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        }
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleAnswerStack.isHidden = false
        
        singleAnswerButton1.setAttributedTitle(NSAttributedString(string: answers[0].text), for: .normal)
        singleAnswerButton2.setAttributedTitle(NSAttributedString(string: answers[1].text), for: .normal)
        singleAnswerButton3.setAttributedTitle(NSAttributedString(string: answers[2].text), for: .normal)
        singleAnswerButton4.setAttributedTitle(NSAttributedString(string: answers[3].text), for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleAnswerStack.isHidden = false
        
        multipleAnswerSwitch1.isOn = false
        multipleAnswerSwitch2.isOn = false
        multipleAnswerSwitch3.isOn = false
        multipleAnswerSwitch4.isOn = false
        
        multipleAnswerLabel1.text = answers[0].text
        multipleAnswerLabel2.text = answers[1].text
        multipleAnswerLabel3.text = answers[2].text
        multipleAnswerLabel4.text = answers[3].text
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        }
        else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
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
