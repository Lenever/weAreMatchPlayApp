//
//  ListUsersDataModel.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation

struct ListUsersDataModel: Codable {
    let data: [Datum]?
//    let current_page: Int?
}

struct Datum: Codable {
    let datumDescription: String?
    let playedAt: String?
    let liked: Bool?
    let likeCount: Int?
    let commented: Bool?
    let commentCount: Int?
    let users: [User]?
    let course: Course?
    let images: [Image]?

    enum CodingKeys: String, CodingKey {
        case datumDescription = "description"
        case playedAt = "played_at"
        case liked
        case likeCount = "like_count"
        case commented
        case commentCount = "comment_count"
        case users, course, images
    }
}

struct Image: Codable {
    let imageDefault: String

    enum CodingKeys: String, CodingKey {
        case imageDefault = "default"
    }
}

struct User: Codable {
    let firstName, lastName, username, email: String
}

struct Course: Codable {
    let name: String
}
