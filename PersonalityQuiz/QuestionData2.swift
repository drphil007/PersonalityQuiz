//
//  QuestionData.Swift
//  PersonalityQuiz
//
//  Created by Philine Wairata on 29/04/2018.
//  Copyright © 2018 Philine Wairata. All rights reserved.
//

import Foundation

/// Describes question response type.
struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

/// Display to the player and a type property that ties the answer to a specific result.
struct Answer {
    var text: String
    var type: AnimalType
}

// Definition property to present each animal type
enum AnimalType: Character {
    case koala = "🐨", panda = "🐼", chick = "🐥", owl = "🦉"

    var definition: String {
        switch self {
        case .koala:
            return "You are incredibly lazy. You surround yourself with the food you love, and enjoy activities on the couch -like watching Netflix."
        case .panda:
            return "You enjoy hugs, the gym -not so much."
        case .chick:
            return "You are a fledgling in life."
        case .owl:
            return "You secretly love Harry Potter. Personality wise you would be his owl, Hedwig."
        }
    }
}

