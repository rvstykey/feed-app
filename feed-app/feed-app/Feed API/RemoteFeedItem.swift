//
//  RemoteFeedItem.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 29.08.22.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
