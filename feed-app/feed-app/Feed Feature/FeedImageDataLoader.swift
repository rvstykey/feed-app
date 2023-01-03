//
//  FeedImageDataLoader.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 13.11.22.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
