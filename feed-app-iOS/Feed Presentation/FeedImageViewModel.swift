//
//  FeedImageViewModel.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 15.11.22.
//

import Foundation
import feed_app

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
