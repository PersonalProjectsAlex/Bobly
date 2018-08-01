

import Foundation
struct Large : Codable {
	let resize : String?
	let h : Double?
	let w : Double?

	enum CodingKeys: String, CodingKey {

		case resize = "resize"
		case h = "h"
		case w = "w"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		resize = try values.decodeIfPresent(String.self, forKey: .resize)
		h = try values.decodeIfPresent(Double.self, forKey: .h)
		w = try values.decodeIfPresent(Double.self, forKey: .w)
	}

}
