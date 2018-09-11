//
//  LoginValidator.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/14/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import Foundation

struct LoginValidador {
    typealias Validator = ValidateEmail & ValidatePassword
}

extension LoginValidador: LoginValidador.Validator { }

