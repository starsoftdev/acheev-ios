//
//  LoginController.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/14/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginController: UINavigationController {
    
    private let validator: LoginValidador.Validator = {
        return LoginValidador()
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView.init(image: UIImage(named: "acheev-logo"))
        return imageView
    }()
    
    private let facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue with Facebook", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red:0.21, green:0.24, blue:0.33, alpha:0.15).cgColor
        button.layer.cornerRadius = 4
        return button
    }()
    
    private let googleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Continue with Gmail", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red:0.21, green:0.24, blue:0.33, alpha:0.15).cgColor
        button.layer.cornerRadius = 4
        return button
    }()
    
    private let orLabel: UILabel = {
        let label = UILabel()
        label.text = "or"
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.keyboardType = .emailAddress
        textField.placeholder = "email address"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red:0.21, green:0.24, blue:0.33, alpha:0.15).cgColor
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.isSecureTextEntry = true
        textField.placeholder = "password"
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red:0.21, green:0.24, blue:0.33, alpha:0.15).cgColor
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setBackgroundImage(UIImage(named: "logIn-button-background"), for: .normal)
        button.layer.cornerRadius = 4
        return button
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.textAlignment = .right
        return button
    }()

    private let separationLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.15)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupSubviews()
        setupConstraints()
    }
    
}

extension LoginController: Setup {
    
    func setup() {
        view.backgroundColor = .white
        navigationController?.title = "Sign In"
    }
    
    func setupSubviews() {
        view.addSubview(logoImageView)
        view.addSubview(facebookButton)
        view.addSubview(googleButton)
        
        view.addSubview(orLabel)
        
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        view.addSubview(forgotPasswordButton)
        view.addSubview(separationLine)
    }
    
    func setupConstraints() {
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(83)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImageView.snp.bottom).offset(40)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        
        googleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(facebookButton.snp.bottom).offset(8)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        
        orLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(googleButton.snp.bottom).offset(12)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(orLabel.snp.bottom).offset(12)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(emailTextField.snp.bottom).offset(8)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField.snp.bottom).offset(12)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(12)
            make.right.equalTo(loginButton.snp.right)
        }
        
        separationLine.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton.snp.bottom).offset(12)
            make.centerX.equalToSuperview()
            make.height.equalTo(1)
        }

    }
    
}

// MARK: LOGIN VALIDATION FUNCTIONS
private extension LoginController {
    
    func isFormValid() -> Bool {
        do {
            try validator.isEmailValid(emailTextField.text ?? "")
        } catch {
            return false
        }
        do {
            try validator.isPasswordValid(passwordTextField.text ?? "")
        } catch {
            return false
        }
        return true
    }
    
}
