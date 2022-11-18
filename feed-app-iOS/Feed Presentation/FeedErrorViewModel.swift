//
//  FeedErrorViewModel.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 18.11.22.
//

import Foundation

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
