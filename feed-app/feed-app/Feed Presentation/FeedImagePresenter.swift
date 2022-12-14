//
//  FeedImagePresenter.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 18.11.22.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
