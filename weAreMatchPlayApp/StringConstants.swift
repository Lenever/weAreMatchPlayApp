//
//  StringConstants.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation

enum NetworkConstants {
    static let baseUrl = "https://api.wearematchplay.com/v2"
}

enum LoginConstants {
    static let titleText = "Login"
    static let avenir = "AvenirNext-Medium"
    static let emailPlaceholder = "email"
    static let passwordPlaceholder = "password"
    static let montserrat = "MontserratRegular"
    static let loginButtonTitle = "LOGIN"
    static let emptyString = ""
    static let loginUrl = "auth/login"
}

enum CollectionViewPageContent {
    static let titles = ["Millenium Golf Club", "Some Post1", "Some post 2", "Some Post3", "Some post 4"]
    static let images = ["first-image", "first-image", "first-image", "first-image", "first-image"]
    static let descriptions = ["I beat him so hard, it's not even funny anymore 😂. Get this man a new putter", "I beat him so hard, it's not even funny anymore 😂. Get this man a new putter", "I beat him so hard, it's not even funny anymore 😂. Get this man a new putter", "I beat him so hard, it's not even funny anymore 😂. Get this man a new putter", "I beat him so hard, it's not even funny anymore 😂. Get this man a new putter"]
    static let dates = ["24.01.2019"]
    static let likes = ["1","2","3","4","5"]
    static let comments = ["1","45","67","89","34"]
    static let firstButton = ["", "1 & 2", "1 & 2", "1 & 2", "1 & 2"]
    static let secondButton = ["", "2 & 3", "3 & 4", "1 & 2", "1 & 2"]
    static let thirdButton = ["T. Pieters", "V. Victor", "M. Park", "1 & 2", "1 & 2"]
    static let fourthButton = ["A. Pieters", "A. Victor", "M. Park", "1 & 2", "1 & 2"]
}

enum StringsConstants {
    static let cellId = "cellId"
}

enum ListUsersConstants {
    static let listUsersUrl = "matches"
}
