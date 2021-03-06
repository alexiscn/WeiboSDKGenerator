// NOTE: This file is generated by WBSDKGenerator.
 
extension WBParameter {
    public struct Short_Url {
 
        public class Counts: NSObject {
 
            // 需要取得分享数的短链接，需要URLencoded，最多不超过20个。
            public var url_short: String
 
            public init(url_short: String) {
                self.url_short = url_short
            }
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                params["url_short"] = url_short
                return params
            }
        }
 
        public class Expand: NSObject {
 
            // 需要还原的短链接，需要URLencoded，最多不超过20个 。
            public var url_short: String
 
            public init(url_short: String) {
                self.url_short = url_short
            }
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                params["url_short"] = url_short
                return params
            }
        }
 
        public class Shorten: NSObject {
 
            // 需要转换的长链接，需要URLencoded，最多不超过20个。
            public var url_long: String
 
            public init(url_long: String) {
                self.url_long = url_long
            }
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                params["url_long"] = url_long
                return params
            }
        }
    }
}
