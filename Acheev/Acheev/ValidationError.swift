//
//  ValidationError.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/13/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import Foundation

typealias ErrorMessage = String

enum ValidationError: Error {
    case emailError(value: EmailError)
    case passwordError(value: PasswordError)
}

extension ValidationError {
    var description: ErrorMessage {
        switch self {
        case .emailError(let error):
            return error.description
        case .passwordError(let error):
            return error.description
        }
    }
}

enum EmailError {
    case emptyEmail
    case invalidEmail
    
    var description: ErrorMessage {
        switch self {
        case .emptyEmail:
            return NSLocalizedString("Empty Email", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Invalid Email", comment: "")
        }
    }
}

enum PasswordError {
    case emptyPassword
    case incorrectPasswordLength
    case passwordHasInvalidCharacters
    
    var description: ErrorMessage {
        switch self {
        case .emptyPassword:
            return NSLocalizedString("Empty password", comment: "")
        case .incorrectPasswordLength:
            return NSLocalizedString("Password should be 6-10 characters long", comment: "")
        case .passwordHasInvalidCharacters:
            return NSLocalizedString("Password has invalid characters", comment: "")
        }
    }
}
