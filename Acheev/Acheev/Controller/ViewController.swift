//
//  ViewController.swift
//  Acheev
//
//  Created by Roman Salazar Lopez on 8/7/18.
//  Copyright © 2018 Roman Salazar Lopez. All rights reserved.
//

import UIKit
import SnapKit
import Firebase
import Alamofire
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Facebook LogIn
        let facebookButton = FBSDKLoginButton()
        facebookButton.tintColor = .yellow
        facebookButton.readPermissions = ["public_profile", "email"]
        facebookButton.center = self.view.center
        view.addSubview(facebookButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
