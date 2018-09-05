//
//  SignUpController.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/29/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {
    
    
    @IBOutlet weak var alreadyAMemberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
    
    func setupSubviews() {
        alreadyAMemberButton.setTitleColor(.black, for: .normal)
        alreadyAMemberButton.setTitle("Already a member? \nSign In!", for: .normal)
        alreadyAMemberButton.titleLabel?.numberOfLines = 2
        alreadyAMemberButton.titleLabel?.textAlignment = .center
        alreadyAMemberButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }
    
    @IBAction func onSignupButton(_ sender: UIButton) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabBarController = storyboard.instantiateViewController(withIdentifier:
            "TabBarController")
        self.navigationController?.present(tabBarController, animated: true, completion: nil)
        
        print("On sign up button")
    }
    
}

extension SignUpController {
    
}
