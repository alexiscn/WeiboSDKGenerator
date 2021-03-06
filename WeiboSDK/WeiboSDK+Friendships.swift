// NOTE: This file is generated by WBSDKGenerator.
 
import GenericNetworking
 
// MARK: - Friendships Related API
extension WeiboSDK {
 
    public struct Friendships {
 
        ///获取用户粉丝列表
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Friendships.Followers` to see more details. 
        ///   - completion: Callback
        public static func followers(param: WBParameter.Friendships.Followers, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/friendships/followers.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取用户的关注列表
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Friendships.Friends` to see more details. 
        ///   - completion: Callback
        public static func friends(param: WBParameter.Friendships.Friends, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/friendships/friends.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取用户粉丝UID列表
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Friendships.Ids` to see more details. 
        ///   - completion: Callback
        public static func ids(param: WBParameter.Friendships.Ids, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/friendships/followers/ids.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取两个用户之间是否存在关注关系
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Friendships.Show` to see more details. 
        ///   - completion: Callback
        public static func show(param: WBParameter.Friendships.Show, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/friendships/show.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
    }
}
