//
//  PricingController.swift
//  boblyoutline
//
//  Created by Administrador on 6/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import ExpandableCell
import TwitterKit

class PricingController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var pricingTable: ExpandableTableView!
    
    // MARK: - Let-Var
    var cell: UITableViewCell {
        return pricingTable.dequeueReusableCell(withIdentifier: ExpandedCell.ID)!
    }
    
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()

    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
    
    // MARK: - SetUps / Funcs
    func setUpUI(){
        //Hiding unedded cells
        pricingTable.tableFooterView = UIView()
    }
    
    func setUpActions(){
        //Delegating Tableview
        pricingTable.expandableDelegate = self
        
        //Setting cells
        Core.shared.registerCell(at: pricingTable, named: "PricingCell")
        Core.shared.registerCell(at: pricingTable, named: "FeaturesPricesCell")
        
    }
    
    
    private func gettingData(){}
    
    // MARK: - Objective C
    
}


class ExpandedCell: UITableViewCell {
    static let ID = "ExpandedCell"
    
    @IBOutlet var titleLabel: UILabel!
}

