//
//  Endpoints.swift
//  boblyoutline
//
//  Created by Administrador on 29/06/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation

// MARK: - Let-Var
let BASE_URL = "https://api.twitter.com/1.1/"
let SERVER_BASE_URL = "https://0c8a1a43.ngrok.io/"


struct Endpoints {
    
    /*Twitter Endpoints*/
    
    //Get
    static let USERTIMELINE = "\(BASE_URL)statuses/user_timeline.json"
    static let FAVOURITESFROMUSER = "\(BASE_URL)favorites/list.json"
    
    // Post
    static let UPDATE = "\(BASE_URL)statuses/update.json"
    static let UPDATEPROFILE = "\(BASE_URL)account/update_profile.json"
    
    //Put
    
    //Oauth
    static let OAUTH_URL = "twitterkit-kYKkaxCFb5lhWgjFOrFXBZIca://"
    
    struct Server {
        static let GETADSACCOUNTS = "\(SERVER_BASE_URL)ads_accounts"
        static let SCHEDULETWEETS = "\(SERVER_BASE_URL)schedule_tweet"
        
    }
    
    
}
