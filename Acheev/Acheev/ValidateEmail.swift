//
//  ValidateEmailProtocol.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/13/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import Foundation

protocol ValidateEmail {
    func isEmailValid(_ email: String) throws
}

extension ValidateEmail {

    func isEmailValid(_ email: String) throws {
        if email.count == 0 {
            throw ValidationError.emailError(value: .emptyEmail)
        } else if !validateEmail(with: email) {
            throw ValidationError.emailError(value: .invalidEmail)
        }
    }
    
    private func validateEmail(with email: String) -> Bool {
        let emailRegex = "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: email)
    }
    
    
}
