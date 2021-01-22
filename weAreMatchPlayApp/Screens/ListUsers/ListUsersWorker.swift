//
//  ListUsersWorker.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import Foundation
import Alamofire

protocol ListUsersWorkerProtocol {
    func getUsers(apiToken: String, completion: @escaping (ListUsersDataModel?, Error?) -> ())
}

class ListUsersWorker: ListUsersWorkerProtocol {
    func getUsers(apiToken: String, completion: @escaping (ListUsersDataModel?, Error?) -> ()) {
        let url = "\(NetworkConstants.baseUrl)/\(ListUsersConstants.listUsersUrl)"
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(apiToken)",
            "Accept": "application/json"
        ]
        
        AF.request(url, headers: headers).responseDecodable(of: ListUsersDataModel.self) {
            response in
            if let error = response.error {
                completion(nil, error)
                print(error.localizedDescription)
                return
            }
            completion(response.value, nil)
            print(response.value?.data?[0].playedAt as Any)
            return
        }
    }
}
