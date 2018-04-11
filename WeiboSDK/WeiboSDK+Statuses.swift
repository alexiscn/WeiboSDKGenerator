// NOTE: This file is generated by WBSDKGenerator.

import GenericNetworking 

// MARK: - Statuses related API 
extension WeiboSDK {

    /// 批量获取指定微博的转发数评论数
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - ids: 需要获取数据的微博ID，多个之间用逗号分隔，最多不超过100个。
    ///   - completion: Callback
    public class func Statuses_count(access_token: String, ids: String, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/statuses/count.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        params["ids"] = ids
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取当前登录用户及其所关注用户的最新微博
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - since_id: 若指定此参数，则返回ID比since_id大的微博（即比since_id时间晚的微博），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的微博，默认为0。
    ///   - count: 单页返回的记录条数，最大不超过100，默认为20。
    ///   - page: 返回结果的页码，默认为1。
    ///   - base_app: 是否只获取当前应用的数据。0为否（所有数据），1为是（仅当前应用），默认为0。
    ///   - feature: 过滤类型ID，0：全部、1：原创、2：图片、3：视频、4：音乐，默认为0。
    ///   - trim_user: 返回值中user字段开关，0：返回完整user字段、1：user字段仅返回user_id，默认为0。
    ///   - completion: Callback
    public class func Statuses_home_timeline(access_token: String, since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, base_app: Int?, feature: Int?, trim_user: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/statuses/home_timeline.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        if let since_id = since_id {
            params["since_id"] = since_id
        }
        if let max_id = max_id {
            params["max_id"] = max_id
        }
        if let count = count {
            params["count"] = count
        }
        if let page = page {
            params["page"] = page
        }
        if let base_app = base_app {
            params["base_app"] = base_app
        }
        if let feature = feature {
            params["feature"] = feature
        }
        if let trim_user = trim_user {
            params["trim_user"] = trim_user
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取@当前用户的最新微博
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - since_id: 若指定此参数，则返回ID比since_id大的微博（即比since_id时间晚的微博），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的微博，默认为0。
    ///   - count: 单页返回的记录条数，最大不超过200，默认为20。
    ///   - page: 返回结果的页码，默认为1。
    ///   - filter_by_author: 作者筛选类型，0：全部、1：我关注的人、2：陌生人，默认为0。
    ///   - filter_by_source: 来源筛选类型，0：全部、1：来自微博、2：来自微群，默认为0。
    ///   - filter_by_type: 原创筛选类型，0：全部微博、1：原创的微博，默认为0。
    ///   - completion: Callback
    public class func Statuses_mentions(access_token: String, since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, filter_by_author: Int?, filter_by_source: Int?, filter_by_type: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/statuses/mentions.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        if let since_id = since_id {
            params["since_id"] = since_id
        }
        if let max_id = max_id {
            params["max_id"] = max_id
        }
        if let count = count {
            params["count"] = count
        }
        if let page = page {
            params["page"] = page
        }
        if let filter_by_author = filter_by_author {
            params["filter_by_author"] = filter_by_author
        }
        if let filter_by_source = filter_by_source {
            params["filter_by_source"] = filter_by_source
        }
        if let filter_by_type = filter_by_type {
            params["filter_by_type"] = filter_by_type
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 返回一条原创微博的最新转发微博
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - id: 需要查询的微博ID。
    ///   - since_id: 若指定此参数，则返回ID比since_id大的微博（即比since_id时间晚的微博），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的微博，默认为0。
    ///   - count: 单页返回的记录条数，最大不超过200，默认为20。
    ///   - page: 返回结果的页码，默认为1。
    ///   - filter_by_author: 作者筛选类型，0：全部、1：我关注的人、2：陌生人，默认为0。
    ///   - completion: Callback
    public class func Statuses_repost_timeline(access_token: String, id: Int64, since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, filter_by_author: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/statuses/repost_timeline.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        params["id"] = id
        if let since_id = since_id {
            params["since_id"] = since_id
        }
        if let max_id = max_id {
            params["max_id"] = max_id
        }
        if let count = count {
            params["count"] = count
        }
        if let page = page {
            params["page"] = page
        }
        if let filter_by_author = filter_by_author {
            params["filter_by_author"] = filter_by_author
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 第三方分享链接到微博
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - status: 用户分享到微博的文本内容，必须做URLencode，内容不超过140个汉字，文本中不能包含“#话题词#”，同时文本中必须包含至少一个第三方分享到微博的网页URL，且该URL只能是该第三方（调用方）绑定域下的URL链接，绑定域在“我的应用 － 应用信息 － 基本应用信息编辑 － 安全域名”里设置。
    ///   - pic: 用户想要分享到微博的图片，仅支持JPEG、GIF、PNG图片，上传图片大小限制为<5M。上传图片时，POST方式提交请求，需要采用multipart/form-data编码方式。
    ///   - rip: 开发者上报的操作用户真实IP，形如：211.156.0.1。
    ///   - completion: Callback
    public class func Statuses_share(access_token: String, status: String, pic: Any?, rip: String?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/statuses/share.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        params["status"] = status
        if let pic = pic {
            params["pic"] = pic
        }
        if let rip = rip {
            params["rip"] = rip
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 根据ID获取单条微博信息
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - id: 需要获取的微博ID。
    ///   - completion: Callback
    public class func Statuses_show(access_token: String, id: Int64, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/statuses/show.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        params["id"] = id
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取用户发布的微博
    ///
    /// - Parameters:
    ///   - access_token: 采用OAuth授权方式为必填参数，OAuth授权后获得。
    ///   - uid: 需要查询的用户ID。
    ///   - screen_name: 需要查询的用户昵称。
    ///   - since_id: 若指定此参数，则返回ID比since_id大的微博（即比since_id时间晚的微博），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的微博，默认为0。
    ///   - count: 单页返回的记录条数，最大不超过100，超过100以100处理，默认为20。
    ///   - page: 返回结果的页码，默认为1。
    ///   - base_app: 是否只获取当前应用的数据。0为否（所有数据），1为是（仅当前应用），默认为0。
    ///   - feature: 过滤类型ID，0：全部、1：原创、2：图片、3：视频、4：音乐，默认为0。
    ///   - trim_user: 返回值中user字段开关，0：返回完整user字段、1：user字段仅返回user_id，默认为0。
    ///   - completion: Callback
    public class func Statuses_user_timeline(access_token: String, uid: Int64?, screen_name: String?, since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, base_app: Int?, feature: Int?, trim_user: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/statuses/user_timeline.json"
        var params: [String: Any] = [:]
        params["access_token"] = access_token
        if let uid = uid {
            params["uid"] = uid
        }
        if let screen_name = screen_name {
            params["screen_name"] = screen_name
        }
        if let since_id = since_id {
            params["since_id"] = since_id
        }
        if let max_id = max_id {
            params["max_id"] = max_id
        }
        if let count = count {
            params["count"] = count
        }
        if let page = page {
            params["page"] = page
        }
        if let base_app = base_app {
            params["base_app"] = base_app
        }
        if let feature = feature {
            params["feature"] = feature
        }
        if let trim_user = trim_user {
            params["trim_user"] = trim_user
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }
}