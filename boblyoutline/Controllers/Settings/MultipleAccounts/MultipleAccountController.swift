//
//  MultipleAccountController.swift
//  boblyoutline
//
//  Created by Administrador on 22/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import Alamofire
import SwifteriOS

class MultipleAccountController: UIViewController {
    
    // MARK: - Let-Var
    var response = [Accounts]()
    
    // MARK: - Outlets
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        AdsaccountsManager().getAccount { (response) in
            guard let response = response else{return}
            self.response = response
            for (index, element) in response.enumerated() {
                if index == 0 {
                    print(element.oauth_secret)
                    print(element.idaccount)
                    print(element.oauth_token)
                    guard let oauthToken = element.oauth_token, let oauthSecret = element.oauth_secret, let id = element.idaccount else{
                        return
                    }
                    UserSingleton.shared.saveOauth(oauthToken, oauthSecret, id)
                    
                }
                
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let oauthToken = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthToken)
        let oauthTokenSecret = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthTokenSecret)
        
        let swifter = Swifter(consumerKey: Constants.consumerKey, consumerSecret: Constants.consumerSecret, oauthToken: oauthToken, oauthTokenSecret: oauthTokenSecret)
        swifter.postTweet(status: "Hola", success: { (response) in
            print(response)
        }) { (error) in
            print(error)
        }
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    }
    
    // MARK: - SetUps / Funcs
    
    
    // MARK: - Objective C
 

}
