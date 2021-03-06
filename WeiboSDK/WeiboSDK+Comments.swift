// NOTE: This file is generated by WBSDKGenerator.
 
import GenericNetworking
 
// MARK: - Comments Related API
extension WeiboSDK {
 
    public struct Comments {
 
        ///我发出的评论列表
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.ByMe` to see more details. 
        ///   - completion: Callback
        public static func byMe(param: WBParameter.Comments.ByMe, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/by_me.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///评论一条微博
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.Create` to see more details. 
        ///   - completion: Callback
        public static func create(param: WBParameter.Comments.Create, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/create.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.postJSON(path: path, parameters: params, completion: completion)
        }
 
        ///删除一条我的评论
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.Destroy` to see more details. 
        ///   - completion: Callback
        public static func destroy(param: WBParameter.Comments.Destroy, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/destroy.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.postJSON(path: path, parameters: params, completion: completion)
        }
 
        ///批量删除我的评论
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.DestroyBatch` to see more details. 
        ///   - completion: Callback
        public static func destroyBatch(param: WBParameter.Comments.DestroyBatch, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/destroy_batch.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.postJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取@到我的评论
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.Mentions` to see more details. 
        ///   - completion: Callback
        public static func mentions(param: WBParameter.Comments.Mentions, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/mentions.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///回复一条我收到的评论
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.Reply` to see more details. 
        ///   - completion: Callback
        public static func reply(param: WBParameter.Comments.Reply, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/reply.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.postJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取某条微博的评论列表
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.Show` to see more details. 
        ///   - completion: Callback
        public static func show(param: WBParameter.Comments.Show, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/show.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///批量获取评论内容
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.ShowBatch` to see more details. 
        ///   - completion: Callback
        public static func showBatch(param: WBParameter.Comments.ShowBatch, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/show_batch.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///获取用户发送及收到的评论列表
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.Timeline` to see more details. 
        ///   - completion: Callback
        public static func timeline(param: WBParameter.Comments.Timeline, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/timeline.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///我收到的评论列表
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Comments.ToMe` to see more details. 
        ///   - completion: Callback
        public static func toMe(param: WBParameter.Comments.ToMe, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/comments/to_me.json"
            var params = param.value()
            if let token = WeiboSDK.accessToken {
                params["access_token"] = token
            }
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
    }
}
