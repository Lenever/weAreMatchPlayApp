//
//  ListUsersViewController.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import UIKit
import SnapKit

class ListUsersViewController: UIViewController {
    var userAPIToken: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        print(userAPIToken ?? "E nor workk oooo")
    }
}
