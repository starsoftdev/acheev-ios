//
//  SignInController.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/29/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit

class SignInController: UIViewController {
    
    
    @IBOutlet weak var notAMemberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
    
    func setupSubviews() {
        notAMemberButton.setTitleColor(.black, for: .normal)
        notAMemberButton.setTitle("Not a member yet? \nJoin Now!", for: .normal)
        notAMemberButton.titleLabel?.numberOfLines = 2
        notAMemberButton.titleLabel?.textAlignment = .center
        notAMemberButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }
    
    @IBAction func onLogInButton(_ sender: UIButton) {
        print("On sign in button")
    }
    
    

}

extension SignUpController {
    
}
