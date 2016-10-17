//
//  ViewController.swift
//  UIWebView
//
//  Created by mstcode on 04/01/16.
//  Copyright © 2016 mstcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://app-eb31e4c92ef6da.spapps.swisscom.com/communities/sf/SwisscomNewsApp/Pages/index.aspx")
        webView.loadRequest(URLRequest(url: url!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

