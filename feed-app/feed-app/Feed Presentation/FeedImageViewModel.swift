//
//  FeedImageViewModel.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 18.11.22.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
