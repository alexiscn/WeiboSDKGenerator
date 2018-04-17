// NOTE: This file is generated by WBSDKGenerator.
 
extension WBParameter {
    public struct Friendships {
 
        public class Followers: NSObject {
 
            // 需要查询的用户UID。
            public var uid: Int64?
            // 需要查询的用户昵称。
            public var screen_name: String?
            // 单页返回的记录条数，默认为5，最大不超过5。
            public var count: Int?
            // 返回结果的游标，下一页用返回值里的next_cursor，上一页用previous_cursor，默认为0。
            public var cursor: Int?
            // 返回值中user字段中的status字段开关，0：返回完整status字段、1：status字段仅返回status_id，默认为1。
            public var trim_status: Int?
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                if let uid = uid {
                    params["uid"] = uid
                }
                if let screen_name = screen_name {
                    params["screen_name"] = screen_name
                }
                if let count = count {
                    params["count"] = count
                }
                if let cursor = cursor {
                    params["cursor"] = cursor
                }
                if let trim_status = trim_status {
                    params["trim_status"] = trim_status
                }
                return params
            }
        }
 
        public class Friends: NSObject {
 
            // 需要查询的用户UID。
            public var uid: Int64?
            // 需要查询的用户昵称。
            public var screen_name: String?
            // 单页返回的记录条数，默认为5，最大不超过5。
            public var count: Int?
            // 返回结果的游标，下一页用返回值里的next_cursor，上一页用previous_cursor，默认为0。
            public var cursor: Int?
            // 返回值中user字段中的status字段开关，0：返回完整status字段、1：status字段仅返回status_id，默认为1。
            public var trim_status: Int?
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                if let uid = uid {
                    params["uid"] = uid
                }
                if let screen_name = screen_name {
                    params["screen_name"] = screen_name
                }
                if let count = count {
                    params["count"] = count
                }
                if let cursor = cursor {
                    params["cursor"] = cursor
                }
                if let trim_status = trim_status {
                    params["trim_status"] = trim_status
                }
                return params
            }
        }
 
        public class Ids: NSObject {
 
            // 需要查询的用户UID。
            public var uid: Int64?
            // 需要查询的用户昵称。
            public var screen_name: String?
            // 单页返回的记录条数，默认为5，最大不超过5。
            public var count: Int?
            // 返回结果的游标，下一页用返回值里的next_cursor，上一页用previous_cursor，默认为0。
            public var cursor: Int?
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                if let uid = uid {
                    params["uid"] = uid
                }
                if let screen_name = screen_name {
                    params["screen_name"] = screen_name
                }
                if let count = count {
                    params["count"] = count
                }
                if let cursor = cursor {
                    params["cursor"] = cursor
                }
                return params
            }
        }
 
        public class Show: NSObject {
 
            // 源用户的UID。
            public var source_id: Int64?
            // 源用户的微博昵称。
            public var source_screen_name: String?
            // 目标用户的UID。
            public var target_id: Int64?
            // 目标用户的微博昵称。
            public var target_screen_name: String?
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                if let source_id = source_id {
                    params["source_id"] = source_id
                }
                if let source_screen_name = source_screen_name {
                    params["source_screen_name"] = source_screen_name
                }
                if let target_id = target_id {
                    params["target_id"] = target_id
                }
                if let target_screen_name = target_screen_name {
                    params["target_screen_name"] = target_screen_name
                }
                return params
            }
        }
    }
}
