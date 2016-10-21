//
//  ViewController.swift
//  UIWebView
//
//  Created by mstcode on 04/01/16.
//  Copyright © 2016 mstcode. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var salesfreak = "https://app-eb31e4c92ef6da.spapps.swisscom.com/communities/sf/SwisscomNewsApp/Pages/index.aspx"
    var qualiportalold = "https://www.qualiportal.ch/"
    
    let wv = WKWebView(frame: UIScreen.main.bounds)
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url =  NSURL(string: salesfreak) else { return }
        wv.navigationDelegate = self
        wv.load(NSURLRequest(url: url as URL) as URLRequest)
        view.addSubview(wv)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if navigationAction.navigationType == .linkActivated  {
            if let newURL = navigationAction.request.url,
                let host = newURL.host , !host.hasPrefix(salesfreak) &&
                UIApplication.shared.canOpenURL(newURL) &&
                UIApplication.shared.openURL(newURL) {
                decisionHandler(.cancel)
            } else {
                decisionHandler(.allow)
            }
        } else {
            decisionHandler(.allow)
        }
    }


}

