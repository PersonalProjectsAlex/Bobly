//
//  TimelineTableView+TableViewDelegate.swift
//  boblyoutline
//
//  Created by Administrador on 29/06/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation
import UIKit

extension TimelineTableView: UITableViewDataSource, UITableViewDelegate{
    
     // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTimeline.count > 0 ? filteredTimeline.count:1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Getting cell on cellforrowat
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellIdentifiers.timelineCell, for: indexPath) as? TimelineCell else { return UITableViewCell() }
        
        if filteredTimeline.count > 0{
            cell.setBaseTimeLine = filteredTimeline[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    
}
