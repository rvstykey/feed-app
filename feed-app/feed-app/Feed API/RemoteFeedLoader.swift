//
//  RemoteFeedLoader.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 31.07.22.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
