//
//  UserSIngleton.swift
//  MyShot
//
//  Created by Administrador on 8/06/18.
//  Copyright © 2018 avalogics. All rights reserved.
//

import Foundation


struct GlobalSettings{
    let defaults = UserDefaults.standard
}

class UserSingleton {
    static let shared = UserSingleton()
    private init() {}
    // MARK: - Let-Var
    
    // MARK: - SetUps / Funcs
    //Setting a way to keep the user logged
    func keepLogged(_ logged: String) {
        GlobalSettings().defaults.set(logged, forKey: "")
    }
    
    func saveOauth(_ oauthToken: String, _ oauthTokenSecret: String , _ userID: String){
        GlobalSettings().defaults.set(oauthToken, forKey: Constants.DefaultKeys.oauthToken)
        GlobalSettings().defaults.set(oauthTokenSecret, forKey: Constants.DefaultKeys.oauthTokenSecret)
        GlobalSettings().defaults.set(userID, forKey: Constants.DefaultKeys.userID)
    }
    
    //Setting info user keys
    func setCurrentLoginID(_ struserid: String) {
        GlobalSettings().defaults.set(struserid, forKey: "")
    }
    
    //Setting photo from update profile
    func setUsername(_ strusername: String) {
        GlobalSettings().defaults.set(strusername, forKey: "")
    }
    
    //Setting info user keys
    func setCurrentUser(_ userName: String?, _ userPhoto: String?, _ userID: String?) {
        GlobalSettings().defaults.set(userName, forKey: "")
        GlobalSettings().defaults.set(userPhoto, forKey: "")
        GlobalSettings().defaults.set(userID, forKey: "")
    }
    
    //Calling a key for a user
    func loggedUser(key: String) -> String {
        let str = GlobalSettings().defaults.object(forKey: key) as? String
        return str == nil ? "" : str!
    }
    
    //Deleting user settings
    func resetUser(){
        GlobalSettings().defaults.removeObject(forKey: Constants.DefaultKeys.oauthToken)
        GlobalSettings().defaults.removeObject(forKey: Constants.DefaultKeys.oauthTokenSecret)
        GlobalSettings().defaults.removeObject(forKey: Constants.DefaultKeys.userID)
    }
    
    func twittersignOut(){}
    
}

