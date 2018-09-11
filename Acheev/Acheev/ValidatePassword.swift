//
//  ValidatePasswordProtocol.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/13/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import Foundation

protocol ValidatePassword {
    func isPasswordValid(_ password: String) throws
}

extension ValidatePassword {
    func isPasswordValid(_ password: String) throws {
        if password.count == 0 {
            throw ValidationError.passwordError(value: .emptyPassword)
        } else if password.count < 6 || password.count > 10 {
            throw ValidationError.passwordError(value: .incorrectPasswordLength)
        } else if !validatePassword(with: password) {
            throw ValidationError.passwordError(value: .passwordHasInvalidCharacters)
        }
    }
    
    private func validatePassword(with password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
}


