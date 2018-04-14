// NOTE: This file is generated by WBSDKGenerator.
 
import GenericNetworking
 
// MARK: - Statuses Related API
extension WeiboSDK {
 
    public struct Statuses {
 
        ///批量获取指定微博的转发数评论数
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Statuses.Count` to see more details. 
        ///   - completion: Callback
        public static func count(param: WBParameter.Statuses.Count, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/statuses/count.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取当前登录用户及其所关注用户的最新微博
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Statuses.HomeTimeline` to see more details. 
        ///   - completion: Callback
        public static func homeTimeline(param: WBParameter.Statuses.HomeTimeline, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/statuses/home_timeline.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取@当前用户的最新微博
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Statuses.Mentions` to see more details. 
        ///   - completion: Callback
        public static func mentions(param: WBParameter.Statuses.Mentions, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/statuses/mentions.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///返回一条原创微博的最新转发微博
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Statuses.RepostTimeline` to see more details. 
        ///   - completion: Callback
        public static func repostTimeline(param: WBParameter.Statuses.RepostTimeline, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/statuses/repost_timeline.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///第三方分享链接到微博
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Statuses.Share` to see more details. 
        ///   - completion: Callback
        public static func share(param: WBParameter.Statuses.Share, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/statuses/share.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///根据ID获取单条微博信息
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Statuses.Show` to see more details. 
        ///   - completion: Callback
        public static func show(param: WBParameter.Statuses.Show, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/statuses/show.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取用户发布的微博
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Statuses.UserTimeline` to see more details. 
        ///   - completion: Callback
        public static func userTimeline(param: WBParameter.Statuses.UserTimeline, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/statuses/user_timeline.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
    }
}
