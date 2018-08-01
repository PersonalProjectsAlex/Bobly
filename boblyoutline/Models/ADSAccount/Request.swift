

import Foundation
struct Request : Codable {
    let params : ADSParams?
    
    enum CodingKeys: String, CodingKey {
        
        case params = "params"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        params = try values.decodeIfPresent(ADSParams.self, forKey: .params)
    }
}
