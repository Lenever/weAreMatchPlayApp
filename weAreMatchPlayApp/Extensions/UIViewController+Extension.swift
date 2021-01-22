//
//  UIViewController+Extension.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import UIKit

extension UIViewController {
    func handleNetworkError(prompt: String) {
        let alert = UIAlertController(title: "⚠️", message: prompt, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func hideNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        self.navigationController?.navigationBar.barStyle = .black
    }
}
