//
//  ViewController.swift
//  RxPlayground
//
//  Created by Rostislav Zapolsky on 23.07.22.
//

import UIKit

// Feed
protocol FeedLoader {
    func loadFeed(completion: @escaping ([String], Error?) -> Void)
}

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String], Error?) -> Void) {
        
    }
}

class LocalFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String], Error?) -> Void) {
        
    }
}

class BackupFeedLoader: FeedLoader {
    internal init(main: FeedLoader, backup: FeedLoader) {
        self.main = main
        self.backup = backup
    }
    
    let main: FeedLoader
    let backup: FeedLoader
    
    func loadFeed(completion: @escaping ([String], Error?) -> Void) {
        main.loadFeed { [weak self] items, error in
            guard let self = self else {
                return
            }
            if error != nil {
                self.backup.loadFeed(completion: completion)
            } else {
                completion(items, error)
            }
        }
    }
}

final class FeedViewController: UIViewController {
    
    var feedLoader: FeedLoader!
    
    convenience init(feedLoader: FeedLoader) {
        self.init()
        self.feedLoader = feedLoader
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedLoader.loadFeed { loadedItems, error in
            
        }
    }
}
