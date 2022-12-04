//
//  RemoteImageCommentsLoader.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 04.12.22.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
