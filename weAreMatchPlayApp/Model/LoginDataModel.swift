//
//  LoginDataModel.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation

struct LoginDataModel {
    var email, password: String
}

struct LoginSuccessResponseDataModel: Codable {
    let apiToken: String
    
    enum CodingKeys: String, CodingKey {
        case apiToken = "api_token"
    }
}

struct LoginErrorResponseDataModel: Codable {
    let message: String
    let errors: Errors
}

struct Errors: Codable {
    let login: [String]
}
