//
//  VideoResult.swift
//  MovieApp
//
//  Created by Ádám-Krisztián Német on 11.05.2021.
//

import Foundation

// MARK: - VideoData
struct VideoData: Decodable {
    let id: Int
    let results: [ResultVideo]
    
}

// MARK: - Result
struct ResultVideo: Decodable {
    let id, iso639_1, iso3166_1, key: String
    let name, site: String
    let size: Int
    let type: String

    enum CodingKeys: String, CodingKey {
        case id
        case iso639_1 = "iso_639_1"
        case iso3166_1 = "iso_3166_1"
        case key, name, site, size, type
    }
}

