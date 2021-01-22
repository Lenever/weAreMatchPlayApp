//
//  ListUsersPresentationLogic.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation

protocol ListUsersPresentationLogic {
    func displayDataSuccess(prompt: ListUsersDataModel)
    func displayDataError(prompt: String)
}

class ListUsersPresenter: ListUsersPresentationLogic {
    var listUsersView: ListUsersDisplayLogic?
    
    func displayDataSuccess(prompt: ListUsersDataModel) {
        listUsersView?.displaySuccessAlert(prompt: prompt)
    }
    
    func displayDataError(prompt: String) {
        listUsersView?.displayFailureAlert(prompt: prompt)
    }
}
