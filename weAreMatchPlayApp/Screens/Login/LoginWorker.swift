//
//  LoginWorker.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation
import Alamofire

protocol loginWorkerProtocol {
    func login(userDetail: LoginDataModel, completion: @escaping (LoginSuccessResponseDataModel?, Error?) -> ())
}

class LoginWorker: loginWorkerProtocol {
    func login(userDetail: LoginDataModel, completion: @escaping (LoginSuccessResponseDataModel?, Error?) -> ()) {
        let url = "https://api.wearematchplay.com/v2/auth/login"
        let parameters: [String: Any] = [
            "email": userDetail.email,
            "password": userDetail.password
        ]
        
        AF.request(url, method: .post, parameters: parameters).responseDecodable(of: LoginSuccessResponseDataModel.self) {
            response in
            if let error = response.error {
                completion(nil, error)
                print(error.localizedDescription)
                return
            }
            completion(response.value, nil)
            print(response.value?.apiToken)
            return
        }
    }
}
