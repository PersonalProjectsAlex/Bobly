//
//  FollowersTableController+TableViewDelegate.swift
//  boblyoutline
//
//  Created by Mac on 19/7/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation
import UIKit

 // MARK: - Table view data source
extension FollowersTableController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return followers.count > 0 ? followers.count:1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = followersTableView.dequeueReusableCell(withIdentifier: Constants.CellIdentifiers.simpleUsersCell, for: indexPath) as? SimpleUsersCell else { return UITableViewCell() }
        if followers.count > 0{
            cell.setListFollowers = followers[indexPath.row]
            cell.actionButton.isHidden = false
        }else{
            cell.screennameLabel.text = "Not data available yet"
            cell.actionButton.isHidden = true
        }
        
        cell.blackListConditional = false
       
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}
