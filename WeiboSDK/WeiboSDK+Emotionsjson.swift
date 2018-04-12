// NOTE: This file is generated by WBSDKGenerator.

import GenericNetworking 

// MARK: - Emotionsjson related API 
extension WeiboSDK {

    /// 获取官方表情
    ///
    /// - Parameters:
    ///   - type: 表情类别，face：普通表情、ani：魔法表情、cartoon：动漫表情，默认为face。
    ///   - language: 语言类别，cnname：简体、twname：繁体，默认为cnname。
    ///   - completion: Callback
    public class func Emotionsjson_emotions(param: Emotionsjson_emotionsParameter,completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/emotions.json"
        let params = param.value()
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }
}