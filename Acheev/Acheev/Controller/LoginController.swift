//
//  LoginController.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/14/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    private let validator: LoginValidador.Validator = {
        return LoginValidador()
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: LOGIN VALIDATION FUNCTIONS
private extension LoginController {
    
    func isFormValid() -> Bool {
        do {
//            try validator.isEmailValid(emailLabel.email)
        } catch {
            return false
        }
        do {
//            try validator.isPasswordValid(passwordLabel.text)
        } catch {
            return false
        }
        return true
    }
    
}
