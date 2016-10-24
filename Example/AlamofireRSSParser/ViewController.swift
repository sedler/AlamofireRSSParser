//
//  ViewController.swift
//  AlamofireRSSParser
//
//  Created by Don Angelillo on 03/04/2016.
//  Copyright (c) 2016 Don Angelillo. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireRSSParser

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        //let url = "http://www.angrymetalguy.com/feed/"
        let url = "http://rss.cnn.com/rss/cnn_topstories.rss"
        
        Alamofire.request(url).responseRSS() { (response) -> Void in
            if let feed: RSSFeed = response.result.value {
                //do something with your new RSSFeed object!
                for item in feed.items {
                    print(item)
                }
            }
        }
    }
    
    
    
}

