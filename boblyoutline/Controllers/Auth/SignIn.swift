//
//  SignIn.swift
//  boblyoutline
//
//  Created by Administrador on 9/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation
import UIKit
import TwitterKit
import SafariServices
import Accounts
import Social

class SignIn: UIViewController,SFSafariViewControllerDelegate{

    // MARK: - Let-Var
    let useACAccount = false
    
    var safariVC: SFSafariViewController?
    
    // MARK: - Outlets
    
    @IBOutlet weak var twitterButton: UIButton!
    
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    // MARK: - SetUps / Funcs
    func setUpUI(){}
    
    func setUpActions(){}
    
    private func gettingData(){}
    
    @IBAction func SignInAction(_ sender: UIButton) {
        
        weak var weakSelf = self
        guard let weak = weakSelf else{return}
        guard let url = URL(string: Endpoints.OAUTH_URL) else{return}
        
        
        Core.shared.setBasicSwifter().authorize(withCallback: url , presentingFrom: self, success: { accessToken, response in
          
            guard let key =  accessToken?.key else{return}
            guard let secret =  accessToken?.secret else{return}
            guard let id =  accessToken?.userID else{return}
            var num = Int()
            num = 2
            print(key)
            print(secret)
            
            UserSingleton.shared.saveOauth(key, secret, id)
            
            switch num{
            case 1:
                weak.performSegue(withIdentifier: Constants.Segues.Auth.signInToMainControllerSegue, sender: weak)
                URLCache.shared.removeAllCachedResponses()
            case 2:
                weak.performSegue(withIdentifier: Constants.Segues.Auth.signInToMain2ControllerSegue, sender: weak)
                URLCache.shared.removeAllCachedResponses()
            default:
                print("error")
            }
            weak.performSegue(withIdentifier: Constants.Segues.Auth.signInToMainControllerSegue, sender: weak)
            URLCache.shared.removeAllCachedResponses()
            
        }, failure: { error in
            print(error)
        })
        
    }
    
    @available(iOS 9.0, *)
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
       
    }
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        controller.delegate = nil
        guard let url = URL(string: "") else{return}
        safariVC = SFSafariViewController(url: url)
        safariVC!.delegate = self
    }

    
    // MARK: - Objective C

    
}
