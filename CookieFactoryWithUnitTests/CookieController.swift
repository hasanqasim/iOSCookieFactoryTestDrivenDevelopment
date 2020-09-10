//
//  CookieController.swift
//  CookieFactoryWithUnitTests
//
//  Created by Hasan Qasim on 10/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import Foundation

class CookieController: NSObject {
    var gingerbreadCookies: [Cookie]?
    var shortbreadCookies: [Cookie]?
    var chocolateChipCookies: [Cookie]?
    
    override init() {
        self.gingerbreadCookies = [Cookie]()
        self.shortbreadCookies = [Cookie]()
        self.chocolateChipCookies = [Cookie]()
        super.init()
    }
    
    func addGingerbreadCookie() {
        let cookie = Cookie(.gingerbread)
        self.gingerbreadCookies?.append(cookie)
    }
    
    func addShortbreadCookie() {
        let cookie = Cookie(.shortbread)
        self.shortbreadCookies?.append(cookie)
    }
    
    func addChocolateChipCookie() {
        let cookie = Cookie(.chocolateChip)
        self.chocolateChipCookies?.append(cookie)
    }
    
    func reset() {
        self.gingerbreadCookies?.removeAll()
        self.shortbreadCookies?.removeAll()
        self.chocolateChipCookies?.removeAll()
        
    }


    
}
