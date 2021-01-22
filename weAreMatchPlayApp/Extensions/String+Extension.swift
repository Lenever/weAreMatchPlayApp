//
//  String+Extension.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import UIKit

extension String {
    var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
}
