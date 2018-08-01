//
//  SimpleUsersCell.swift
//  boblyoutline
//
//  Created by Mac on 19/7/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import SDWebImage
import SwifteriOS


class SimpleUsersCell: UITableViewCell {

    var setListFollowers: ListFollowers?{
        didSet {
            setupCell()
        }
    }
    var setLisBlocked: BlockList?{
        didSet {
            setupCellForBlocked()
        }
    }
    
    var swifter: Swifter?
    required init?(coder aDecoder: NSCoder) {
        
        let oauthToken = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthToken)
        let oauthTokenSecret = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthTokenSecret)
        
        self.swifter = Swifter(consumerKey: Constants.consumerKey, consumerSecret: Constants.consumerSecret, oauthToken: oauthToken, oauthTokenSecret: oauthTokenSecret)
        super.init(coder: aDecoder)
    }
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var screennameLabel: UILabel!
  
    var blackListConditional = Bool()
 
    
    func setupCell() {
        guard let followers = setListFollowers else{return}
        
        
        guard let imageURL = URL(string: followers.profile_image_url!) else{return}
        
        profileImageView.sd_setImage(with:  imageURL, placeholderImage: #imageLiteral(resourceName: "icon"))
        screennameLabel.text = followers.screen_name
        
        //Setting button title
        let showActionString = blackListConditional == true ? "Unblock" : "Unfollow"
        actionButton.setTitle(showActionString, for: .normal)
        
        //rounding imageview
        profileImageView.roundedImage()
    }
    
    func setupCellForBlocked() {
        guard let followers = setLisBlocked else{return}
        
        guard let imageURL = URL(string: followers.profile_image_url!) else{return}
        
        profileImageView.sd_setImage(with:  imageURL, placeholderImage: #imageLiteral(resourceName: "icon"))
        screennameLabel.text = followers.screen_name
        
        //Setting button title
        let showActionString = blackListConditional == true ? "Unblock" : "Unfollow"
        actionButton.setTitle(showActionString, for: .normal)
        
        //rounding imageview
        profileImageView.roundedImage()
    }
    
    @IBAction func actionAtTouch(_ sender: UIButton) {
        weak var weakSelf = self
        guard let weak = weakSelf else{return}
        switch blackListConditional {
        case true:
            
            Block()
        case false:
            Unfollow()
        default:
            print("error")
        }
    }
    
    
    func Unfollow(){
        weak var weakSelf = self
        guard let weak = weakSelf else{return}
        
        guard let followers = setLisBlocked, let screename = followers.screen_name else{return}
        swifter?.unfollowUser(.screenName(screename), success: { (response) in
            print(response)
            
        }, failure: { (error) in
            print(error)
        })
    }
    
    
    func Block(){
        weak var weakSelf = self
        guard let weak = weakSelf else{return}
        
        guard let followers = setLisBlocked, let screename = followers.screen_name else{return}
        print(screename)
        swifter?.unblockUser(for: .screenName(screename), success: { (response) in
            print(response)
        }, failure: { (error) in
            print(error)
        })
    }
    
}
