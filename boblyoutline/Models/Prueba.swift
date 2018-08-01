//
//  Prueba.swift
//  boblyoutline
//
//  Created by Administrador on 10/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import Foundation

struct Prueba : Codable {
    let access_token : String?
    let token_type : String?
    
    enum CodingKeys: String, CodingKey {
        
        case access_token = "access_token"
        case token_type = "token_type"
    }
}
