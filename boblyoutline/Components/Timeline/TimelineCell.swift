//
//  TimelineCell.swift
//  boblyoutline
//
//  Created by Administrador on 29/06/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import SDWebImage
import HexColors

class TimelineCell: UITableViewCell {

    
    var setBaseTimeLine: BaseTimeline?{
        didSet {
            setupCell()
        }
    }
    
    // MARK: - Let-Var
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: SETUPS/LOADERS
    
    func setupCell() {
        
        guard let data = setBaseTimeLine else{
            print("Issue in dataResponse")
            return
        }
        
        if let image = data.extended_entities?.media  {
            
            for i in image{
                guard let imageURL = URL(string: i.media_url!) else{
                    
                    return
                
                }
                print(imageURL.description)
                ImageView.sd_setImage(with:  imageURL, placeholderImage: #imageLiteral(resourceName: "icon"))
            }
            
        }else{
            ImageView.image = nil
            
        }
        
        
        titleLabel.text = data.text
        
        
    }
    
}
