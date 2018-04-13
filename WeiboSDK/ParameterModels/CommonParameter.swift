// NOTE: This file is generated by WBSDKGenerator.
 
extension WBParameter {
    public struct Common {
        public class CodeToLocation: NSObject {
            // 需要查询的地址编码，多个之间用逗号分隔。
            public var codes: String
 
            public init(codes: String) {
                self.codes = codes
            }
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                params["codes"] = codes
                return params
            }
        }
        public class GetCity: NSObject {
            // 省份的省份代码。
            public var province: String
            // 城市的首字母，a-z，可为空代表返回全部，默认为全部。
            public var capital: String?
            // 返回的语言版本，zh-cn：简体中文、zh-tw：繁体中文、english：英文，默认为zh-cn。
            public var language: String?
 
            public init(province: String) {
                self.province = province
            }
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                params["province"] = province
                if let capital = capital {
                    params["capital"] = capital
                }
                if let language = language {
                    params["language"] = language
                }
                return params
            }
        }
        public class GetCountry: NSObject {
            // 国家的首字母，a-z，可为空代表返回全部，默认为全部。
            public var capital: String?
            // 返回的语言版本，zh-cn：简体中文、zh-tw：繁体中文、english：英文，默认为zh-cn。
            public var language: String?
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                if let capital = capital {
                    params["capital"] = capital
                }
                if let language = language {
                    params["language"] = language
                }
                return params
            }
        }
        public class GetProvince: NSObject {
            // 国家的国家代码。
            public var country: String
            // 省份的首字母，a-z，可为空代表返回全部，默认为全部。
            public var capital: String?
            // 返回的语言版本，zh-cn：简体中文、zh-tw：繁体中文、english：英文，默认为zh-cn。
            public var language: String?
 
            public init(country: String) {
                self.country = country
            }
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                params["country"] = country
                if let capital = capital {
                    params["capital"] = capital
                }
                if let language = language {
                    params["language"] = language
                }
                return params
            }
        }
        public class GetTimezone: NSObject {
            // 返回的语言版本，zh-cn：简体中文、zh-tw：繁体中文、english：英文，默认为zh-cn。
            public var language: String?
 
            func value() -> [String: Any] {
                var params: [String: Any] = [:]
                if let language = language {
                    params["language"] = language
                }
                return params
            }
        }
    }
}
