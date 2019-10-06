//
//  DetailVC.swift
//  VideoPlayer
//
//  Created by Mehmet Eroğlu on 6.10.2019.
//  Copyright © 2019 Mehmet Eroğlu. All rights reserved.
//

import UIKit
import WebKit

class DetailVC: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet var videoTitleLabel: UILabel!
    
    private var _partyRock: DataModel!
    
    var partyRock: DataModel {
        get {
            return _partyRock
        }set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTitleLabel.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoUrl, baseURL: nil)
    }
    

  

}
