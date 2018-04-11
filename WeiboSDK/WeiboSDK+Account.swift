// NOTE: This file is generated by WBSDKGenerator.

import GenericNetworking 

// MARK: - Account related API 
extension WeiboSDK {

    /// 授权之后获取用户的联系邮箱
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - completion: Callback
    public class func Account_email(access_token: String, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/account/profile/email.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 授权之后获取用户的UID
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - completion: Callback
    public class func Account_get_uid(access_token: String, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/account/get_uid.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取当前授权用户API访问频率限制
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - completion: Callback
    public class func Account_rate_limit_status(access_token: String, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/account/rate_limit_status.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }
}