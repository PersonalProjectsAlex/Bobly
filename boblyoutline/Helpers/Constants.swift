//
//  Constants.swift
//  boblyoutline
//
//  Created by Administrador on 29/06/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation




struct Constants {
    //Constants
    static let consumerKey = "kYKkaxCFb5lhWgjFOrFXBZIca"
    static let consumerSecret = "Bw2GrBnsBVL5ukANTFKHjhAS6O221wte3qUxwBstJ10YxeTDsj"
    //CellIdentifiers
    struct CellIdentifiers {
        static let timelineCell = "TimelineCell"
        static let simpleUsersCell = "SimpleUsersCell"
        
    }
    //DefaultKeys
    struct DefaultKeys{
        static let oauthToken = "OauthToken"
        static let oauthTokenSecret = "OauthTokenSecret"
        static let userID = "userID"
    }
    
    
    struct Segues{
        struct Auth {
            static let signInToMainControllerSegue = "SignInToMainControllerSegue"
            static let signInToMain2ControllerSegue = "SignInToMain2ControllerSegue"
            static let signInToMain3ControllerSegue = "SignInToMain3ControllerSegue"
        }
    }
}

//Storyboards constants
public enum GetStoryboards : String {
    case Followers = "Followers"
    case POST = "POST"
    case PUT = "PUT"
}



