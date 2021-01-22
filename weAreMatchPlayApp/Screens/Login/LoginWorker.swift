//
//  LoginWorker.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation
import Alamofire

protocol LoginWorkerProtocol {
    func login(userDetail: LoginDataModel, completion: @escaping (LoginSuccessResponseDataModel?, Error?) -> ())
}

class LoginWorker: LoginWorkerProtocol {
    func login(userDetail: LoginDataModel, completion: @escaping (LoginSuccessResponseDataModel?, Error?) -> ()) {
        let url = "\(NetworkConstants.baseUrl)/\(LoginConstants.loginUrl)"
        let parameters: [String: Any] = [
            LoginConstants.emailPlaceholder: userDetail.email,
            LoginConstants.passwordPlaceholder: userDetail.password
        ]
        
        AF.request(url, method: .post, parameters: parameters).responseDecodable(of: LoginSuccessResponseDataModel.self) {
            response in
            if let error = response.error {
                completion(nil, error)
                print(error.localizedDescription)
                return
            }
            completion(response.value, nil)
            print(response.value?.apiToken as Any)
            return
        }
    }
}
