//
//  WeiboSDK.txt
//  WBSDKGenerator
//
//  Created by xu.shuifeng on 2018/4/11.
//  Copyright © 2018 shuifeng.me. All rights reserved.
//

import Foundation
import GenericNetworking

public struct WBParameter {
}

public class WeiboSDK {

    public static var accessToken: String?

    public class func configurate() {
        GenericNetworking.baseURLString = "https://api.weibo.com"
    }

    public class func configureAccessToken(_ accessToken: String) {
        WeiboSDK.accessToken = accessToken
    }
}
