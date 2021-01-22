//
//  ViewController.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import UIKit
import SnapKit
import MaterialComponents.MaterialTextControls_FilledTextAreas
import MaterialComponents.MaterialTextControls_FilledTextFields

protocol LoginDisplayLogic {
    func displaySuccessAlert(prompt: String)
    func displayFailureAlert(prompt: String)
}

class LoginViewController: UIViewController {
    var loginInteractor: LoginBusinessLogic?
    var titleLabel = UILabel()
    var emailLabel = MDCFilledTextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    var passwordLabel = MDCFilledTextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    var loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        layoutSubviews()
    }
    
    func setUp() {
        passwordLabel.delegate = self
        passwordLabel.enablePasswordToggle()
    }
    
    func layoutSubviews() {
        view.backgroundColor = .white
        navigationBar()
        setupTitleLabel()
        setupEmailLabel()
        setupPasswordLabel()
        setupLoginButton()
    }
    
    func navigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        self.navigationController?.navigationBar.barStyle = .black
    }
    
    func setupTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.text = "Login"
        titleLabel.font = UIFont(name: "AvenirNext-Medium", size: 50.0)
        titleLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.7354719606)
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(100)
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
        }
    }
    
    func setupEmailLabel() {
        view.addSubview(emailLabel)
        emailLabel.placeholder = "Email"
        emailLabel.font = UIFont.init(name: "MontserratRegular", size: 10)
        emailLabel.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        emailLabel.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        emailLabel.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        emailLabel.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        emailLabel.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        emailLabel.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        emailLabel.autocapitalizationType = .none
        emailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(300)
            make.left.equalTo(view.snp.left).offset(22)
            make.right.equalTo(view.snp.right).offset(-34)
        }
    }
    
    func setupPasswordLabel() {
        view.addSubview(passwordLabel)
        passwordLabel.placeholder = "Password"
        passwordLabel.font = UIFont.init(name: "MontserratRegular", size: 10)
        passwordLabel.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .editing)
        passwordLabel.setFilledBackgroundColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        passwordLabel.setUnderlineColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        passwordLabel.setUnderlineColor(#colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1), for: .normal)
        passwordLabel.setFloatingLabelColor(#colorLiteral(red: 0.9921568627, green: 0.4274509804, blue: 0.003921568627, alpha: 1), for: .editing)
        passwordLabel.textColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        passwordLabel.autocapitalizationType = .none
        passwordLabel.isSecureTextEntry = true
        passwordLabel.snp.makeConstraints { (make) in
            make.top.equalTo(emailLabel.snp.bottom).offset(36)
            make.left.equalTo(view.snp.left).offset(22)
            make.right.equalTo(view.snp.right).offset(-34)
        }
    }
    
    func setupLoginButton() {
        view.addSubview(loginButton)
        loginButton.setTitle("Sign in", for: .normal)
        loginButton.contentHorizontalAlignment = .center
        loginButton.backgroundColor = #colorLiteral(red: 0.01960784314, green: 0.4823529412, blue: 1, alpha: 1)
        loginButton.titleLabel?.font = UIFont.init(name: "MontserratRegular", size: 10)
        loginButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        loginButton.layer.cornerRadius = 22.5
        loginButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        loginButton.layer.shadowOpacity = 0.4
        loginButton.layer.shadowRadius = 0.0
        loginButton.layer.masksToBounds = false
        loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        loginButton.snp.makeConstraints { (make) in
            make.top.equalTo(passwordLabel.snp.bottom).offset(80)
            make.centerX.equalTo(view)
            make.height.equalTo(45)
            make.width.equalTo(250)
        }
    }
    
    @objc func handleLogin() {
//        if emailLabel.text != "" && passwordLabel.text != "" && (emailLabel.text?.isValidEmail)! {
//            let view = RegistrationViewController()
//            navigationController?.pushViewController(view, animated: true)
//        }
    }
}

extension LoginViewController: UITextFieldDelegate, LoginDisplayLogic {
    func displaySuccessAlert(prompt: String) {
//        let view = SignupViewController()
//        navigationController?.pushViewController(view, animated: true)
    }
    
    func displayFailureAlert(prompt: String) {
        self.handleNetworkError(prompt: prompt)
    }
    
    
}

