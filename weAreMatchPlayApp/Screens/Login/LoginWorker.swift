//
//  LoginWorker.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation

protocol loginWorkerProtocol {
    func login(userDetail: LoginDataModel, success: @escaping (String) -> (), failure: @escaping (String) -> ())
}

class LoginWorker: loginWorkerProtocol {
    func login(userDetail: LoginDataModel, success: @escaping (String) -> (), failure: @escaping (String) -> ()) {
        let email = userDetail.email
        let password = userDetail.password
    }
    
}
