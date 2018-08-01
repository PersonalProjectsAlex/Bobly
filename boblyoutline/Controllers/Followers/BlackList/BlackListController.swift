//
//  BlackListController.swift
//  boblyoutline
//
//  Created by Administrador on 20/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//
import UIKit
import Alamofire
import SwifteriOS
import NVActivityIndicatorView

class BlackListController: UIViewController, NVActivityIndicatorViewable{
    
    // MARK: - Let-Var
    
    var swifter: Swifter?
    var userblocked = [BlockList]()
    required init?(coder aDecoder: NSCoder) {
        
        let oauthToken = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthToken)
        let oauthTokenSecret = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthTokenSecret)
        
        self.swifter = Swifter(consumerKey: Constants.consumerKey, consumerSecret: Constants.consumerSecret, oauthToken: oauthToken, oauthTokenSecret: oauthTokenSecret)
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Outlets
    @IBOutlet weak public var blacklistTableView: UITableView!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()
        
        definesPresentationContext = true
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
        blacklistTableView.delegate = self
        blacklistTableView.dataSource = self
        
        //Delegating cells
        Core.shared.registerCell(at: blacklistTableView, named: Constants.CellIdentifiers.simpleUsersCell)
        
    }
    
    private func gettingData(){
        weak var weakSelf = self
        guard let weak = weakSelf else{return}
        blacklistTableView.reloadData()
        
        weak.customLoading()
        swifter?.getBlockedUsers( cursor: "-1" , success: { (response, previous, next) in
            do {
                weak.stopAnimating()
                
                let jsonData = Core.shared.jsonToData(response: response)
                let userblocked = try JSONDecoder().decode([BlockList].self, from: jsonData)
                print(userblocked)
                weak.userblocked = userblocked
                
                if weak.userblocked.count > 0{
                    weak.blacklistTableView.reloadData()
                }
                
            } catch let err {
                print("Error:", err)
                weak.stopAnimating()
            }
        }, failure: { (error) in
            print(error)
        })
    }
    
    
    //Custom loading
    func customLoading(){
        let size = CGSize(width: 30, height: 30)
        self.startAnimating(size, message: "...", type: NVActivityIndicatorType.orbit)
    }
    
    // MARK: - Objective C
    
}
