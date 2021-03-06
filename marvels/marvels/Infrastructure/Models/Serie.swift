//
//  Serie.swift
//  marvels
//
//  Created by Aitor Pagán on 06/12/2018.
//  Copyright © 2018 Aitor Pagán. All rights reserved.
//

import Foundation

public struct Serie {
    
    let id: Int
    let title: String?
    let description: String?
    let startYear: Int?
    let endYear: Int?
    let rating: String?
    let type: String?
    let thumbnail: Thumbnail?
    let modified: String?
}

extension Serie: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case startYear
        case endYear
        case rating
        case type
        case modified
        case thumbnail
    }
}

extension Serie: Hashable {
    public var hashValue: Int { return id.hashValue }
}

public struct Thumbnail: Hashable {
    var path: String = ""
    var ext: String = ""
    
    func fullPath() -> String {
        return "\(path).\(ext)"
    }
}

extension Thumbnail: Codable {
    enum CodingKeys: String, CodingKey {
        case path
        case ext = "extension"
    }
}
