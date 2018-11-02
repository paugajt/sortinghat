//
//  ViewController.swift
//  HarryPotterQuiz
//
//  Created by Pauga, Justin on 10/30/18.
//  Copyright © 2018 Pauga. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet weak var startQuizButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startQuizButton.layer.cornerRadius = 4
    }

    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
        
    }

}

