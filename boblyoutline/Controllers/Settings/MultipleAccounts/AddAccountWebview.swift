//
//  AddAccountWebview.swift
//  boblyoutline
//
//  Created by Administrador on 22/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import WebKit

class AddAccountWebview: UIViewController,WKNavigationDelegate {
    
    // MARK: - Let-Var
    
    // MARK: - Outlets
    @IBOutlet weak var webView: WKWebView!
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()
    }

    // MARK: - SetUps / Funcs
    func setUpUI(){
        
    }
    
    func setUpActions(){
        webView.navigationDelegate = self
        URLCache.shared.removeAllCachedResponses()
        
        // Delete any associated cookies
        CleanCache()
        
        // 1
        let url = URL(string: "https://twitter.com/")!
        webView.load(URLRequest(url: url))
        
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    
    private func gettingData(){}
    
    
    func CleanCache(){
        let dataTypes = Set([WKWebsiteDataTypeCookies,
                             WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeSessionStorage,
                             WKWebsiteDataTypeWebSQLDatabases, WKWebsiteDataTypeIndexedDBDatabases])
        WKWebsiteDataStore.default().removeData(ofTypes: dataTypes, modifiedSince: NSDate.distantPast, completionHandler: {})
    }
    
    // MARK: - Webview
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        if let text = webView.url?.absoluteString{
            print(text)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
        
    }
    
    
    // MARK: - Objective C

}
