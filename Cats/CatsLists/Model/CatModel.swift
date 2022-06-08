//
//  CatModel.swift
//  Cats
//
//  Created by Elisha Narida on 6/8/22.
//

import Foundation

// MARK: - Cat
struct Cat: Codable {
    let id: String?
    let url: String?
    let breeds: [Breed]?
    let width, height: Int?
}

// MARK: - Breed
struct Breed: Codable {
    let weight: Weight?
    let id, name: String?
    let vetstreetURL: String?
    let temperament, origin, countryCodes, countryCode: String?
    let breedDescription, lifeSpan: String?
    let indoor: Int?
    let altNames: String?
    let adaptability, affectionLevel, childFriendly, dogFriendly: Int?
    let energyLevel, grooming, healthIssues, intelligence: Int?
    let sheddingLevel, socialNeeds, strangerFriendly, vocalisation: Int?
    let experimental, hairless, natural, rare: Int?
    let rex, suppressedTail, shortLegs: Int?
    let wikipediaURL: String?
    let hypoallergenic: Int?
    let referenceImageID: String?

    enum CodingKeys: String, CodingKey {
        case weight, id, name
        case vetstreetURL = "vetstreet_url"
        case temperament, origin
        case countryCodes = "country_codes"
        case countryCode = "country_code"
        case breedDescription = "description"
        case lifeSpan = "life_span"
        case indoor
        case altNames = "alt_names"
        case adaptability
        case affectionLevel = "affection_level"
        case childFriendly = "child_friendly"
        case dogFriendly = "dog_friendly"
        case energyLevel = "energy_level"
        case grooming
        case healthIssues = "health_issues"
        case intelligence
        case sheddingLevel = "shedding_level"
        case socialNeeds = "social_needs"
        case strangerFriendly = "stranger_friendly"
        case vocalisation, experimental, hairless, natural, rare, rex
        case suppressedTail = "suppressed_tail"
        case shortLegs = "short_legs"
        case wikipediaURL = "wikipedia_url"
        case hypoallergenic
        case referenceImageID = "reference_image_id"
    }
}

// MARK: - Weight
struct Weight: Codable {
    let imperial, metric: String?
}
