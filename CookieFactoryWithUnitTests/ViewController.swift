//
//  ViewController.swift
//  CookieFactoryWithUnitTests
//
//  Created by Hasan Qasim on 9/9/20.
//  Copyright © 2020 Hasan Qasim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shortbreadLabel: UILabel!
    @IBOutlet weak var chocolateLabel: UILabel!
    @IBOutlet weak var gingerBreadLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var cookieJar: CookieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cookieJar = CookieController()
        refreshUI()
       
    }

    @IBAction func generateShortbreadCookie(_ sender: Any) {
        cookieJar?.addShortbreadCookie()
        refreshUI()
    }
    
    @IBAction func generateChocolateCookie(_ sender: Any) {
        cookieJar?.addChocolateChipCookie()
        refreshUI()
    }
    @IBAction func generateGingerBreadCookie(_ sender: Any) {
        cookieJar?.addGingerbreadCookie()
        refreshUI()
    }
    @IBAction func clearAllCookies(_ sender: Any) {
        cookieJar?.reset()
        refreshUI()
    }
    
    func refreshUI() {
        shortbreadLabel.text = "Shortbread Cookies \(cookieJar!.shortbreadCookies!.count)"
        chocolateLabel.text = "Chocolate Chip Cookies \(cookieJar!.chocolateChipCookies!.count)"
        gingerBreadLabel.text = "Gingerbread Cookies \(cookieJar!.gingerbreadCookies!.count)"
        let total = cookieJar!.shortbreadCookies!.count + cookieJar!.chocolateChipCookies!.count + cookieJar!.gingerbreadCookies!.count
        totalLabel.text = "Total Cookies \(total)"
    }
}

