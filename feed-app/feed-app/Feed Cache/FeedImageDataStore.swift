//
//  FeedImageDataStor.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 21.11.22.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
