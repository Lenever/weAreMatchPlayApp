//
//  ListUsersInteractor.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation

protocol ListUsersBusinessLogic {
    func getUsers(apiToken: String)
}

class ListUsersInteractor: ListUsersBusinessLogic {
    var worker: ListUsersWorkerProtocol?
    var presenter: ListUsersPresentationLogic?
    
    func getUsers(apiToken: String) {
        worker?.getUsers(apiToken: apiToken, completion: { (response, error) in
            if response != nil {
                self.presenter?.displayDataSuccess(prompt: response!)
            } else {
                self.presenter?.displayDataError(prompt: error?.localizedDescription ?? String())
            }
        })
    }
}
