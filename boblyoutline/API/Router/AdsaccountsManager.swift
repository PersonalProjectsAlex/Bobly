//
//  adsaccounts.swift
//  boblyoutline
//
//  Created by Mac on 18/7/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation


import Foundation
class AdsaccountsManager: APIManager {
    
    
    /// Home detail.
    ///
    ///
    ///     - completionHandler: Callback with Event value
    
    func getAdsAccounts(completionHandler handler: @escaping (ADSResponse?) -> Void) {

        let getAdsAccountEndpoint = "\(Endpoints.Server.GETADSACCOUNTS)"

        request(endpoint: getAdsAccountEndpoint, completionHandler: handler, method: .get)
    }

    func sheculdeTweet(params: Params,completionHandler handler: @escaping (ScheduledResponse?) -> Void) {
        
        let eventEndpoint = "\(Endpoints.Server.SCHEDULETWEETS)"
        
        request(endpoint: eventEndpoint, completionHandler: handler, method: .post, params: params)
    }
//
    
    func getAccount(completionHandler handler: @escaping ([Accounts]?) -> Void) {
        
        let getAdsAccountEndpoint = "https://demo8434239.mockable.io/offers"
        
        request(endpoint: getAdsAccountEndpoint, completionHandler: handler, method: .get)
    }
}
