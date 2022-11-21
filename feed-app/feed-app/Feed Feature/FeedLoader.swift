//
//  FeedLoader.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 30.07.22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
