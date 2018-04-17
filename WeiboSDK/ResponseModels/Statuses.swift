// NOTE: This file is generated by WBSDKGenerator.

public struct Statuses : Codable {

    // 表态数
    public var attitudesCount: Int? 

    public var bizFeature: Int? 

    public var canEdit: Bool? 

    public var commentManageInfo: CommentManageInfo? 

    // 评论数
    public var commentsCount: Int? 

    public var contentAuth: Int? 

    // 微博创建时间
    public var createdAt: String? 

    public var darwinTags: [String]? 

    // 是否已收藏，true：是，false：否
    public var favorited: Bool? 

    public var gifIds: String? 

    public var hasActionTypeCard: Int? 

    public var hotWeiboTags: [String]? 

    // 微博ID
    public var id: Int? 

    // 字符串型的微博ID
    public var idstr: String? 

    // （暂未支持）回复人昵称
    public var inReplyToScreenName: String? 

    // （暂未支持）回复ID
    public var inReplyToStatusId: String? 

    // （暂未支持）回复人UID
    public var inReplyToUserId: String? 

    public var isLongText: Bool? 

    public var isPaid: Bool? 

    public var isShowBulletin: Int? 

    public var mblogVipType: Int? 

    // 微博MID
    public var mid: String? 

    // 暂未支持
    public var mlevel: Int? 

    public var moreInfoType: Int? 

    public var pendingApprovalCount: Int? 

    public var picUrls: [String]? 

    public var pid: Int? 

    public var positiveRecomFlag: Int? 

    // 转发数
    public var repostsCount: Int? 

    // 被转发的原微博信息字段，当该微博为转发微博时返回 详细
    public var retweetedStatus: RetweetedStatus? 

    public var rid: String? 

    // 微博来源
    public var source: String? 

    public var sourceAllowclick: Int? 

    public var sourceType: Int? 

    // 微博信息内容
    public var text: String? 

    public var textTagTips: [String]? 

    // 是否被截断，true：是，false：否
    public var truncated: Bool? 

    // 微博作者的用户信息字段 详细
    public var user: User? 

    public var userType: Int? 

    // 微博的可见性及指定可见分组信息。该object中type取值，0：普通微博，1：私密微博，3：指定分组微博，4：密友微博；list_id为分组的组号
    public var visible: Visible? 

    enum CodingKeys: String, CodingKey {
        case attitudesCount = "attitudes_count"
        case bizFeature = "biz_feature"
        case canEdit = "can_edit"
        case commentManageInfo = "comment_manage_info"
        case commentsCount = "comments_count"
        case contentAuth = "content_auth"
        case createdAt = "created_at"
        case darwinTags = "darwin_tags"
        case favorited = "favorited"
        case gifIds = "gif_ids"
        case hasActionTypeCard = "hasActionTypeCard"
        case hotWeiboTags = "hot_weibo_tags"
        case id = "id"
        case idstr = "idstr"
        case inReplyToScreenName = "in_reply_to_screen_name"
        case inReplyToStatusId = "in_reply_to_status_id"
        case inReplyToUserId = "in_reply_to_user_id"
        case isLongText = "isLongText"
        case isPaid = "is_paid"
        case isShowBulletin = "is_show_bulletin"
        case mblogVipType = "mblog_vip_type"
        case mid = "mid"
        case mlevel = "mlevel"
        case moreInfoType = "more_info_type"
        case pendingApprovalCount = "pending_approval_count"
        case picUrls = "pic_urls"
        case pid = "pid"
        case positiveRecomFlag = "positive_recom_flag"
        case repostsCount = "reposts_count"
        case retweetedStatus = "retweeted_status"
        case rid = "rid"
        case source = "source"
        case sourceAllowclick = "source_allowclick"
        case sourceType = "source_type"
        case text = "text"
        case textTagTips = "text_tag_tips"
        case truncated = "truncated"
        case user = "user"
        case userType = "userType"
        case visible = "visible"
    }
}
