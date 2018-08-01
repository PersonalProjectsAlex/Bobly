//
//  BlackListController+TableViewDelegate.swift
//  boblyoutline
//
//  Created by Administrador on 20/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation
import UIKit

extension BlackListController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userblocked.count > 0 ? userblocked.count:1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = blacklistTableView.dequeueReusableCell(withIdentifier: Constants.CellIdentifiers.simpleUsersCell, for: indexPath) as? SimpleUsersCell else { return UITableViewCell() }
        if userblocked.count > 0{
            cell.setLisBlocked = userblocked[indexPath.row]
            cell.actionButton.isHidden = false
        }else{
            cell.screennameLabel.text = "Not data available yet"
            cell.actionButton.isHidden = true
        }
        
        cell.blackListConditional = true
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}


