

import Foundation
struct ADSResponse : Codable {
	let request : Request?
	let next_cursor : String?
	let data : [ADSData]?

	enum CodingKeys: String, CodingKey {

		case request = "request"
		case next_cursor = "next_cursor"
		case data = "data"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		request = try values.decodeIfPresent(Request.self, forKey: .request)
		next_cursor = try values.decodeIfPresent(String.self, forKey: .next_cursor)
		data = try values.decodeIfPresent([ADSData].self, forKey: .data)
	}

}
