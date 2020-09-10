//
//  Cookie.swift
//  CookieFactoryWithUnitTests
//
//  Created by Hasan Qasim on 10/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

enum cookieType {
    case shortbread
    case gingerbread
    case chocolateChip
}

class Cookie: NSObject {
    var type: cookieType
    
    init(_ type: cookieType) {
        self.type = type
        super.init()
    }
    
}
