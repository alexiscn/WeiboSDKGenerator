// NOTE: This file is generated by WBSDKGenerator.

import GenericNetworking 

// MARK: - Users related API 
extension WeiboSDK {

    /// 批量获取用户的粉丝数、关注数、微博数
    ///
    /// - Parameters:
    ///   - Counts: Refer `WBParameter.Users.Counts` to see more details. 
    ///   - completion: Callback
    public class func UsersCounts(param: WBParameter.Users.Counts,completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/users/counts.json"
        let params = param.value()
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 通过个性域名获取用户信息
    ///
    /// - Parameters:
    ///   - DomainShow: Refer `WBParameter.Users.DomainShow` to see more details. 
    ///   - completion: Callback
    public class func UsersDomainShow(param: WBParameter.Users.DomainShow,completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/users/domain_show.json"
        let params = param.value()
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取用户信息
    ///
    /// - Parameters:
    ///   - Show: Refer `WBParameter.Users.Show` to see more details. 
    ///   - completion: Callback
    public class func UsersShow(param: WBParameter.Users.Show,completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/users/show.json"
        let params = param.value()
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }
}