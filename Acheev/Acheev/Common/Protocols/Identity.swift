//
//  Identity.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/9/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit

protocol Identity {
    static var identifier: String { get }
}

extension Identity where Self: UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
}
