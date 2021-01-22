//
//  LoginInteractor.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation

protocol LoginBusinessLogic {
    func login(userDetail: LoginDataModel)
}

class LoginInteractor: LoginBusinessLogic {
    var worker: LoginWorkerProtocol?
    var presenter: LoginPresentationLogic?
    
    func login(userDetail: LoginDataModel) {
        worker?.login(userDetail: userDetail, completion: { (response, error) in
            if response != nil {
                self.presenter?.displayDataSuccess(prompt: response?.apiToken ?? String())
            } else {
                self.presenter?.displayDataError(prompt: error?.localizedDescription ?? String())
            }
        })
    }
}
