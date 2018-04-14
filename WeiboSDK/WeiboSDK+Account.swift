// NOTE: This file is generated by WBSDKGenerator.
 
import GenericNetworking
 
// MARK: - Account Related API
extension WeiboSDK {
 
    public struct Account {
 
        ///授权之后获取用户的联系邮箱
        ///
        /// - Parameters:
        ///   - completion: Callback
        public static func email(completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/account/profile/email.json"
            var params: [String: Any] = [:]
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///授权之后获取用户的UID
        ///
        /// - Parameters:
        ///   - completion: Callback
        public static func getUid(completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/account/get_uid.json"
            var params: [String: Any] = [:]
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取当前授权用户API访问频率限制
        ///
        /// - Parameters:
        ///   - completion: Callback
        public static func rateLimitStatus(completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/account/rate_limit_status.json"
            var params: [String: Any] = [:]
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
    }
}
