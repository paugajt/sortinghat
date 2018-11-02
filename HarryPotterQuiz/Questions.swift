//
//  Questions.swift
//  HarryPotterQuiz
//
//  Created by Pauga, Justin on 11/2/18.
//  Copyright © 2018 Pauga. All rights reserved.
//

import Foundation

struct Questions {
    
    static let sorting: [Question] = [
        Question(text: "Choose a box",
                 type: .single,
                 answers: [
                    Answer(text: "Small tortoiseshell box embelleished with gold", type: .Hufflepuff),
                    Answer(text: "Gleeming jet black box with the mark of Merlin", type: .Slytherin),
                    Answer(text: "Ornate golden casket on clawed feet", type: .Ravenclaw),
                    Answer(text: "Small, plain pewter box with inscription \'I only open for the worthy\'", type: .Gryffindor)
            ]),
        Question(text: "Which would you hate to be called?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Ordinary", type: .Slytherin),
                    Answer(text: "Ignorant", type: .Ravenclaw),
                    Answer(text: "Cowardly", type: .Gryffindor),
                    Answer(text: "Selfish", type: .Hufflepuff)
            ]),
        Question(text: "You and two friends need to cross a bridge guarded by a river troll who insists on fighting one of you before he will let all of you pass. Do you:",
                 type: .single,
                 answers: [
                    Answer(text: "Try to confuse the troll into letting all three of you pass without fighting", type: .Ravenclaw),
                    Answer(text: "Suggest drawing lots to decide which of you will fight", type: .Hufflepuff),
                    Answer(text: "Suggest all three of you should fight (without telling the troll)", type: .Slytherin),
                    Answer(text: "Volunteer to fight", type: .Gryffindor)
            ]),
        Question(text: "The Flutterby bush produces flowers that adapt their scent to attract the unwary. If it lured you, it would smell of: ",
                 type: .single,
                 answers: [
                    Answer(text: "A crackling log fire", type: .Gryffindor),
                    Answer(text: "The sea", type: .Slytherin),
                    Answer(text: "Fresh parchment", type: .Ravenclaw),
                    Answer(text: "Home", type: .Hufflepuff)
            ]),
        Question(text: "Which instruments pleases your ear?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Violin", type: .Slytherin),
                    Answer(text: "Trumpet", type: .Hufflepuff),
                    Answer(text: "Piano", type: .Ravenclaw),
                    Answer(text: "Drums", type: .Gryffindor)
            ]),
        Question(text: "Which is the most difficult to deal with for you?",
                 type: .single,
                 answers: [
                    Answer(text: "Hunger", type: .Ravenclaw),
                    Answer(text: "Cold", type: .Slytherin),
                    Answer(text: "Boredom", type: .Gryffindor),
                    Answer(text: "Loneliness", type: .Hufflepuff)
            ]),
        Question(text: "Which goblet would you drink?",
                 type: .single,
                 answers: [
                    Answer(text: "Foaming, frothing, silvery liquid that sparkles", type: .Ravenclaw),
                    Answer(text: "Smooth, thick, richly purple drink that smells of chocolates and plums", type: .Hufflepuff),
                    Answer(text: "Golden liquid so bright it hurts the eye", type: .Gryffindor),
                    Answer(text: "Mysterious black liquid that gleames like ink", type: .Slytherin)
            ]),
        Question(text: "How would you like to be known to history?",
                 type: .single,
                 answers: [
                    Answer(text: "The Wise", type: .Ravenclaw),
                    Answer(text: "The Good", type: .Hufflepuff),
                    Answer(text: "The Great", type: .Slytherin),
                    Answer(text: "The Bold", type: .Gryffindor)
            ]),
        Question(text: "Which power would you choose?",
                 type: .single,
                 answers: [
                    Answer(text: "Invisibility", type: .Gryffindor),
                    Answer(text: "Ability to change the past", type: .Slytherin),
                    Answer(text: "Change your appearance at will", type: .Ravenclaw),
                    Answer(text: "Superhuman Strength", type: .Hufflepuff)
            ]),
        Question(text: "Which of the following would you most like to study?",
                 type: .single,
                 answers: [
                    Answer(text: "Trolls", type: .Hufflepuff),
                    Answer(text: "Vampires", type: .Slytherin),
                    Answer(text: "Ghosts", type: .Gryffindor),
                    Answer(text: "Goblins", type: .Ravenclaw)
            ])
    ]
}
