//
//  TimelineTableView.swift
//  boblyoutline
//
//  Created by Administrador on 29/06/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import Alamofire
import TwitterKit
import SwifteriOS
import SafariServices
import DateTimePicker
import NVActivityIndicatorView

class TimelineTableView: UIViewController, UISearchResultsUpdating, NVActivityIndicatorViewable{
    
    // MARK: - Let-Var
    let decoder = JSONDecoder()
    var timeline = [BaseTimeline]()
    var filteredTimeline = [BaseTimeline]()
    private var session: TWTRSession?
    var swifter: Swifter?
    let refresh = UIRefreshControl()
    let searchController = UISearchController(searchResultsController: nil)
    
    required init?(coder aDecoder: NSCoder) {
        
        let oauthToken = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthToken)
        let oauthTokenSecret = UserSingleton.shared.loggedUser(key: Constants.DefaultKeys.oauthTokenSecret)
        
        self.swifter = Swifter(consumerKey: Constants.consumerKey, consumerSecret: Constants.consumerSecret, oauthToken: oauthToken, oauthTokenSecret: oauthTokenSecret)
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - Outlets
    @IBOutlet weak var timelineTableView: UITableView!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()
        
//        AdsaccountsManager().getAdsAccounts {
//            response in
//            guard let responseData = response else{return}
//            for i in responseData.data!{
//                print(i.id)
//            }
//        }
        
//        let params : Params = ["access_token":"763206925697839105-ewAJ8KEhI37vUcMcTQ0rOeGjJihQcQ5", "access_token_secret":"1F50iQcNmUoic26ySSla99qc3t6KhzPmHrlb1vjfFBsDn", "account_id":"18ce54qn65g", "scheduled_at":"2018-07-18T18:56:00Z", "as_user_id":"763206925697839105", "text":"Hola si funciona desde swift"]
//        AdsaccountsManager().sheculdeTweet(params: params) {
//            response in
//            print(response)
//        }
        
        
//        let picker = DateTimePicker.show()
//
//        picker.highlightColor = UIColor(red: 255.0/255.0, green: 138.0/255.0, blue: 138.0/255.0, alpha: 1)
//        //picker.isDatePickerOnly = true // to hide time and show only date picker
//        picker.completionHandler = { date in
//
//            // do something after tapping done
//            //yyyy-MM-dd HH:mm:ss +zzzz"
//
//
//            let formatter = ISO8601DateFormatter()
//            formatter.formatOptions.insert(.withTimeZone)  // this is only available effective iOS 11 and macOS 10.13
//            print(formatter.string(from: date))
//            //2018-07-18T18:56:00Z
//
//
//        }
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
        gettingData()
        
    }
    
    // MARK: - SetUps / Funcs
    func setUpUI(){}
    
    func setUpActions(){
        //Delegating Tableview
        timelineTableView.delegate = self
        timelineTableView.dataSource = self
        
        //Set Cell Identifier for tableview
        Core.shared.registerCell(at: timelineTableView, named: Constants.CellIdentifiers.timelineCell)
        
        //Refresh control
        refresh.addTarget(self, action: #selector(setupData), for: .valueChanged)
        refresh.attributedTitle = NSAttributedString(string: "Uploading...")
        refresh.tintColor = .lightGray
        timelineTableView.refreshControl = refresh
        
        //Setting search bar
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        timelineTableView.tableHeaderView = searchController.searchBar
        
        //Setting background
        timelineTableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "Background"))
        
        timelineTableView.tableFooterView = UIView()
    }
    
    private func gettingData(){
        
        //Weakself
        weak var weakSelf = self
        guard let weak = weakSelf else{return}
        weak.customLoading()
        weak.refresh.endRefreshing()
        swifter?.getTimeline(for: "", count: 20, includeRetweets: true, success: { (response) in
            do {
                weak.stopAnimating()
                print(response)
                let jsonData = Core.shared.jsonToData(response: response)
                let timeline = try JSONDecoder().decode([BaseTimeline].self, from: jsonData)
                
                weak.timeline = timeline
                weak.filteredTimeline = timeline
                
                if weak.timeline.count > 0{
                    weak.timelineTableView.reloadData()
                }
                
            } catch let err {
                print("Error:", err)
                weak.stopAnimating()
            }
        }, failure: { (error) in
            weak.stopAnimating()
        })
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        // If we haven't typed anything into the search bar then do not filter the results
        if searchController.searchBar.text! == "" {
            filteredTimeline = self.timeline
        } else {
            // Filter the results

                filteredTimeline = self.timeline.filter {
                    if let text = $0.text{
                        let searchResult = (text.lowercased().contains(searchController.searchBar.text!.lowercased())) || (text.uppercased().contains(searchController.searchBar.text!.uppercased()))
                        return searchResult
                    }
                    return true
                }
        }
        
        self.timelineTableView.reloadData()
    }
  
    //Custom loading
    func customLoading(){
        let size = CGSize(width: 30, height: 30)
        self.startAnimating(size, message: "...", type: NVActivityIndicatorType.orbit)
    }
    
    // MARK: - Objective C
    @objc func setupData(){
        
        filteredTimeline.removeAll()
        timelineTableView.reloadData()
        gettingData()
        
        
    }

}
