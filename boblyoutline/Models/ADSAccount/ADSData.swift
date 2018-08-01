
import Foundation
struct ADSData : Codable {
	let name : String?
	let business_name : String?
	let timezone : String?
	let timezone_switch_at : String?
	let id : String?
	let created_at : String?
	let salt : String?
	let updated_at : String?
	let industry_type : String?
	let business_id : String?
	let approval_status : String?
	let deleted : Bool?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case business_name = "business_name"
		case timezone = "timezone"
		case timezone_switch_at = "timezone_switch_at"
		case id = "id"
		case created_at = "created_at"
		case salt = "salt"
		case updated_at = "updated_at"
		case industry_type = "industry_type"
		case business_id = "business_id"
		case approval_status = "approval_status"
		case deleted = "deleted"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		business_name = try values.decodeIfPresent(String.self, forKey: .business_name)
		timezone = try values.decodeIfPresent(String.self, forKey: .timezone)
		timezone_switch_at = try values.decodeIfPresent(String.self, forKey: .timezone_switch_at)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		salt = try values.decodeIfPresent(String.self, forKey: .salt)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		industry_type = try values.decodeIfPresent(String.self, forKey: .industry_type)
		business_id = try values.decodeIfPresent(String.self, forKey: .business_id)
		approval_status = try values.decodeIfPresent(String.self, forKey: .approval_status)
		deleted = try values.decodeIfPresent(Bool.self, forKey: .deleted)
	}

}
