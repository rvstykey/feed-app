//
//  FeedItem.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 30.07.22.
//

import Foundation

struct FeedItem {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
