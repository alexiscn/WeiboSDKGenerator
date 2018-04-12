// NOTE: This file is generated by WBSDKGenerator.

import GenericNetworking 

// MARK: - Comments related API 
extension WeiboSDK {

    /// 我发出的评论列表
    ///
    /// - Parameters:
    ///   - since_id: 若指定此参数，则返回ID比since_id大的评论（即比since_id时间晚的评论），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的评论，默认为0。
    ///   - count: 单页返回的记录条数，默认为50。
    ///   - page: 返回结果的页码，默认为1。
    ///   - filter_by_source: 来源筛选类型，0：全部、1：来自微博的评论、2：来自微群的评论，默认为0。
    ///   - completion: Callback
    public class func Comments_by_me(since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, filter_by_source: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/by_me.json"
        var params: [String: Any] = [:]
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
        if let filter_by_source = filter_by_source {
            params["filter_by_source"] = filter_by_source
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 评论一条微博
    ///
    /// - Parameters:
    ///   - comment: 评论内容，必须做URLencode，内容不超过140个汉字。
    ///   - id: 需要评论的微博ID。
    ///   - comment_ori: 当评论转发微博时，是否评论给原微博，0：否、1：是，默认为0。
    ///   - rip: 开发者上报的操作用户真实IP，形如：211.156.0.1。
    ///   - completion: Callback
    public class func Comments_create(comment: String, id: Int64, comment_ori: Int?, rip: String?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/create.json"
        var params: [String: Any] = [:]
        params["comment"] = comment
        params["id"] = id
        if let comment_ori = comment_ori {
            params["comment_ori"] = comment_ori
        }
        if let rip = rip {
            params["rip"] = rip
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 删除一条我的评论
    ///
    /// - Parameters:
    ///   - cid: 要删除的评论ID，只能删除登录用户自己发布的评论。
    ///   - completion: Callback
    public class func Comments_destroy(cid: Int64, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/destroy.json"
        var params: [String: Any] = [:]
        params["cid"] = cid
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 批量删除我的评论
    ///
    /// - Parameters:
    ///   - cids: 需要删除的评论ID，用半角逗号隔开，最多20个。
    ///   - completion: Callback
    public class func Comments_destroy_batch(cids: Int64, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/destroy_batch.json"
        var params: [String: Any] = [:]
        params["cids"] = cids
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取@到我的评论
    ///
    /// - Parameters:
    ///   - since_id: 若指定此参数，则返回ID比since_id大的评论（即比since_id时间晚的评论），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的评论，默认为0。
    ///   - count: 单页返回的记录条数，默认为50。
    ///   - page: 返回结果的页码，默认为1。
    ///   - filter_by_author: 作者筛选类型，0：全部、1：我关注的人、2：陌生人，默认为0。
    ///   - filter_by_source: 来源筛选类型，0：全部、1：来自微博的评论、2：来自微群的评论，默认为0。
    ///   - completion: Callback
    public class func Comments_mentions(since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, filter_by_author: Int?, filter_by_source: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/mentions.json"
        var params: [String: Any] = [:]
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
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 回复一条我收到的评论
    ///
    /// - Parameters:
    ///   - cid: 需要回复的评论ID。
    ///   - id: 需要评论的微博ID。
    ///   - comment: 回复评论内容，必须做URLencode，内容不超过140个汉字。
    ///   - without_mention: 回复中是否自动加入“回复@用户名”，0：是、1：否，默认为0。
    ///   - comment_ori: 当评论转发微博时，是否评论给原微博，0：否、1：是，默认为0。
    ///   - rip: 开发者上报的操作用户真实IP，形如：211.156.0.1。
    ///   - completion: Callback
    public class func Comments_reply(cid: Int64, id: Int64, comment: String, without_mention: Int?, comment_ori: Int?, rip: String?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/reply.json"
        var params: [String: Any] = [:]
        params["cid"] = cid
        params["id"] = id
        params["comment"] = comment
        if let without_mention = without_mention {
            params["without_mention"] = without_mention
        }
        if let comment_ori = comment_ori {
            params["comment_ori"] = comment_ori
        }
        if let rip = rip {
            params["rip"] = rip
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取某条微博的评论列表
    ///
    /// - Parameters:
    ///   - id: 需要查询的微博ID。
    ///   - since_id: 若指定此参数，则返回ID比since_id大的评论（即比since_id时间晚的评论），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的评论，默认为0。
    ///   - count: 单页返回的记录条数，默认为50。
    ///   - page: 返回结果的页码，默认为1。
    ///   - filter_by_author: 作者筛选类型，0：全部、1：我关注的人、2：陌生人，默认为0。
    ///   - completion: Callback
    public class func Comments_show(id: Int64, since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, filter_by_author: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/show.json"
        var params: [String: Any] = [:]
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

    /// 批量获取评论内容
    ///
    /// - Parameters:
    ///   - cids: 需要查询的批量评论ID，用半角逗号分隔，最大50。
    ///   - completion: Callback
    public class func Comments_show_batch(cids: Int64, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/show_batch.json"
        var params: [String: Any] = [:]
        params["cids"] = cids
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 获取用户发送及收到的评论列表
    ///
    /// - Parameters:
    ///   - since_id: 若指定此参数，则返回ID比since_id大的评论（即比since_id时间晚的评论），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的评论，默认为0。
    ///   - count: 单页返回的记录条数，默认为50。
    ///   - page: 返回结果的页码，默认为1。
    ///   - trim_user: 返回值中user字段开关，0：返回完整user字段、1：user字段仅返回user_id，默认为0。
    ///   - completion: Callback
    public class func Comments_timeline(since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, trim_user: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/timeline.json"
        var params: [String: Any] = [:]
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
        if let trim_user = trim_user {
            params["trim_user"] = trim_user
        }
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }

    /// 我收到的评论列表
    ///
    /// - Parameters:
    ///   - since_id: 若指定此参数，则返回ID比since_id大的评论（即比since_id时间晚的评论），默认为0。
    ///   - max_id: 若指定此参数，则返回ID小于或等于max_id的评论，默认为0。
    ///   - count: 单页返回的记录条数，默认为50。
    ///   - page: 返回结果的页码，默认为1。
    ///   - filter_by_author: 作者筛选类型，0：全部、1：我关注的人、2：陌生人，默认为0。
    ///   - filter_by_source: 来源筛选类型，0：全部、1：来自微博的评论、2：来自微群的评论，默认为0。
    ///   - completion: Callback
    public class func Comments_to_me(since_id: Int64?, max_id: Int64?, count: Int?, page: Int?, filter_by_author: Int?, filter_by_source: Int?, completion: @escaping GenericNetworkingCompletion<Int>) {
        let path = "/2/comments/to_me.json"
        var params: [String: Any] = [:]
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
        GenericNetworking.getJSON(path: path, parameters: params, completion: completion)
    }
}