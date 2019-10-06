//
//  DataModel.swift
//  VideoPlayer
//
//  Created by Mehmet Eroğlu on 6.10.2019.
//  Copyright © 2019 Mehmet Eroğlu. All rights reserved.
//

import Foundation
import UIKit

class DataModel {
    
    private var _videoUrl: String!
    private var _videoTitle: String!
    private var _imageUrl: String!
    
    var videoUrl: String {
        return _videoUrl
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    var imageUrl: String {
        return _imageUrl
    }
    
    init(videoUrl: String, videoTitle: String, imageUrl: String) {
        _videoUrl = videoUrl
        _videoTitle = videoTitle
        _imageUrl = imageUrl
    }
    
}
