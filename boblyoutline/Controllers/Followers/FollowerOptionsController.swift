//
//  FollowerOptionsController.swift
//  boblyoutline
//
//  Created by Administrador on 20/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit

class FollowerOptionsController: UIViewController {
    // MARK: - Let-Var
    @IBOutlet weak var firstOptionButton: UIButton!
    
    
    
    // MARK: - Outlets
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()
        
    }

    // MARK: - SetUps / Funcs
    func setUpUI(){
        //Buttons background properly
        firstOptionButton.imageView?.contentMode = .scaleToFill
        firstOptionButton.clipsToBounds = true
        
    }
    
    func setUpActions(){
        
    }
    // MARK: - Objective C

}
