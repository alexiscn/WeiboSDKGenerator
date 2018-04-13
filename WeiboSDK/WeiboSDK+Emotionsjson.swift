// NOTE: This file is generated by WBSDKGenerator.

import GenericNetworking 

// MARK: - Emotionsjson related API 
extension WeiboSDK {

    public struct Emotionsjson {

        /// 获取官方表情
        ///
        /// - Parameters:
        ///   - Emotions: Refer `WBParameter.Emotionsjson.Emotions` to see more details. 
        ///   - completion: Callback
        public static func emotions(param: WBParameter.Emotionsjson.Emotions,completion: @escaping GenericNetworkingCompletion<Int>) {
            let path = "/2/emotions.json"
            let params = param.value()
            GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
        }
    }
}