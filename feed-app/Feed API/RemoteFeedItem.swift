//
//  RemoteFeedItem.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 29.08.22.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
