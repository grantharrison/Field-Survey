//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Grant Harrison on 11/21/19.
//  Copyright © 2019 Grant Harrison. All rights reserved.
//

import Foundation

enum Animal: String, Codable {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
}

struct Observations: Codable {
    var classification: Animal
    var title: String
    var description: String
    var date: Date
}

struct FieldSurvey: Codable {
    var status: String
    var observations: [Observations]
}
