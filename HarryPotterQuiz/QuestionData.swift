//
//  QuestionData.swift
//  HarryPotterQuiz
//
//  Created by Pauga, Justin on 10/31/18.
//  Copyright © 2018 Pauga. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple
}

struct Answer {
    var text: String
    var type: HogwartsHouse
}

enum HogwartsHouse {
    
    case Ravenclaw, Hufflepuff, Gryffindor, Slytherin
    
    var explanation: String {
        switch self {
        case .Ravenclaw:
            return "Ravenclaw values intelligence, knowledge, and wit. Its emblematic animal is the eagle, and its colours are blue and bronze."
        case .Hufflepuff:
            return "Hufflepuff values hard work, dedication, patience, loyalty, and fair play. Its emblematic animal is the badger, and Yellow and Black are its colours."
        case .Gryffindor:
            return "Gryffindor values bravery, daring, nerve, and chivalry. Its emblematic animal is the lion and its colours are scarlet and gold."
        case .Slytherin:
            return "Slytherin house values ambition, cunning and resourcefulness. Its emblematic animal is the serpent, and its colours are emerald green and silver."
        }
        
    }
}
