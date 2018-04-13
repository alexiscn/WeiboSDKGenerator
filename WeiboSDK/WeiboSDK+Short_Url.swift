// NOTE: This file is generated by WBSDKGenerator.
 
import GenericNetworking
 
// MARK: - Short_Url Related API
extension WeiboSDK {
 
    public struct Short_Url {
 
        ///获取短链接在微博上的微博评论数
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Short_Url.Counts` to see more details. 
        ///   - completion: Callback
        public static func counts(param: WBParameter.Short_Url.Counts, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/short_url/comment/counts.json"
            let params = param.value()
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///短链转长链
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Short_Url.Expand` to see more details. 
        ///   - completion: Callback
        public static func expand(param: WBParameter.Short_Url.Expand, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/short_url/expand.json"
            let params = param.value()
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
 
        ///长链转短链
        ///
        /// - Parameters:
        ///   - param: Refer `WBParameter.Short_Url.Shorten` to see more details. 
        ///   - completion: Callback
        public static func shorten(param: WBParameter.Short_Url.Shorten, completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/short_url/shorten.json"
            let params = param.value()
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
    }
}
