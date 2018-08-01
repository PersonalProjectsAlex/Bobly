//
//  FollowersTableController.swift
//  boblyoutline
//
//  Created by Mac on 19/7/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import Alamofire
import SwifteriOS
import NVActivityIndicatorView

class FollowersTableController: UIViewController, NVActivityIndicatorViewable{
    
    // MARK: - Let-Var
    
    var swifter: Swifter?
    var followers = [ListFollowers]()
    required init?(coder aDecoder: NSCoder) {
        
        let oauthToken = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthToken)
        let oauthTokenSecret = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthTokenSecret)
        
        self.swifter = Swifter(consumerKey: Constants.consumerKey, consumerSecret: Constants.consumerSecret, oauthToken: oauthToken, oauthTokenSecret: oauthTokenSecret)
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Outlets
    @IBOutlet weak var followersTableView: UITableView!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        gettingData()
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: - SetUps / Funcs
    func setUpUI(){}
    
    func setUpActions(){
        //Delegating Tableview
        followersTableView.delegate = self
        followersTableView.dataSource = self
        
        //Delegating cells
        Core.shared.registerCell(at: followersTableView, named: Constants.CellIdentifiers.simpleUsersCell)
        
    }
    
    
    
    private func gettingData(){
        weak var weakSelf = self
        guard let weak = weakSelf else{return}
        weak.customLoading()
        swifter?.getUserFollowing( for: .id(UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.userID)),  count: 15, success: { (response , prueba, prueba2) in
            
            do {
                weak.stopAnimating()
                
                let jsonData = Core.shared.jsonToData(response: response)
                let followers = try JSONDecoder().decode([ListFollowers].self, from: jsonData)
                print(followers)
                weak.followers = followers
                
                if weak.followers.count > 0{
                    weak.followersTableView.reloadData()
                }
                
            } catch let err {
                print("Error:", err)
                weak.stopAnimating()
            }
        }, failure: { (error) in
            
        })
        
    }
    
    
    //Custom loading
    func customLoading(){
        let size = CGSize(width: 30, height: 30)
        self.startAnimating(size, message: "...", type: NVActivityIndicatorType.orbit)
    }
    
    // MARK: - Objective C

}
