//
//  FeedUIComposer.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 14.11.22.
//

import feed_app

public final class FeedUIComposer {
    private init() {}
    
    public static func feedComposedWith(feedLoader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let refreshController = FeedRefreshViewController(feedLoader: feedLoader)
        let feedController = FeedViewController(refreshController: refreshController)
        refreshController.onRefresh = { [weak feedController] feed in
            feedController?.tableModel = feed.map {
                return FeedImageCellController(model: $0, imageLoader: imageLoader)
            }
        }
        return feedController
    }
}
