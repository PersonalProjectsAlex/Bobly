

import Foundation
struct Accounts
: Codable {
	let from : String?
	let idaccount : String?
	let oauth_token : String?
	let oauth_secret : String?
	let photo : String?

	enum CodingKeys: String, CodingKey {

		case from = "from"
		case idaccount = "idaccount"
		case oauth_token = "oauth_token"
		case oauth_secret = "oauth_secret"
		case photo = "photo"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		from = try values.decodeIfPresent(String.self, forKey: .from)
		idaccount = try values.decodeIfPresent(String.self, forKey: .idaccount)
		oauth_token = try values.decodeIfPresent(String.self, forKey: .oauth_token)
		oauth_secret = try values.decodeIfPresent(String.self, forKey: .oauth_secret)
		photo = try values.decodeIfPresent(String.self, forKey: .photo)
	}

}
