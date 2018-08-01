//
//  PricingController+ExpandableCellDelegate.swift
//  boblyoutline
//
//  Created by Administrador on 6/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation
import UIKit
import ExpandableCell

extension PricingController: ExpandableDelegate{
    
    func numberOfSections(in tableView: ExpandableTableView) -> Int {
        return 1
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCell: UITableViewCell, didSelectExpandedRowAt indexPath: IndexPath) {
        if let cell = expandedCell as? FeaturesPricesCell {
            print("\(cell.featuresLabel.text ?? "")")
        }
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCellsForRowAt indexPath: IndexPath) -> [UITableViewCell]? {
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                
                let cell = pricingTable.dequeueReusableCell(withIdentifier: "FeaturesPricesCell") as! FeaturesPricesCell
            
                cell.featuresLabel.text = "Auto follow (Limited engagement)\nUnfollow (Limited engagement)\nAuto favorite\nBasic Analytics (lock certain features)\n"
                
                return [cell]
                
            case 1:
                let cell1 = pricingTable.dequeueReusableCell(withIdentifier: ExpandedCell.ID) as! ExpandedCell
                cell1.titleLabel.text = "First Expanded Cell"
                
                return [cell1]
            case 2:
                let cell1 = pricingTable.dequeueReusableCell(withIdentifier: ExpandedCell.ID) as! ExpandedCell
                cell1.titleLabel.text = "First Expanded Cell"
                
                return [cell1]
                
            default:
                break
            }
        default:
            break
        }
        return nil
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightsForExpandedRowAt indexPath: IndexPath) -> [CGFloat]? {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                return [200]
                
            case 1:
                return [150]
                
            case 2:
                return [44]
                
            default:
                break
            }
        default:
            break
        }
        return nil
    }
    
    //    func expandableTableView(_ expandableTableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
    //        let cell = expandableTableView.cellForRow(at: indexPath)
    //        cell?.contentView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    //        cell?.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    //    }
    
    func expandableTableView(_ expandableTableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 125
    }
    
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0, 2:
                //Getting cell on cellforrowat
                guard let cell = pricingTable.dequeueReusableCell(withIdentifier: "PricingCell", for: indexPath) as? PricingCell else { return UITableViewCell() }
                cell.arrowImageView.image = #imageLiteral(resourceName: "arrowactive")
                cell.titleLabel.text = "FREE 7 DAY DEMO"
                return cell
                
            case 1:
                guard let cell = pricingTable.dequeueReusableCell(withIdentifier: "PricingCell", for: indexPath) as? PricingCell else { return UITableViewCell() }
                cell.arrowImageView.image = #imageLiteral(resourceName: "arrowactive")
                cell.titleLabel.text = "$49.99 / Month \nPROFESIONAL PACKAGE"
                
                return cell
                
            default:
                break
            }
            
        case 1:
            switch indexPath.row {
            case 0, 1, 2:
                guard let cell = pricingTable.dequeueReusableCell(withIdentifier: "PricingCell", for: indexPath) as? PricingCell else { return UITableViewCell() }
                return cell
                
            default:
                break
            }
        default:
            break
        }
        
        return UITableViewCell()
    }
}
