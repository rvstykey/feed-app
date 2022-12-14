//
//  FeedPresenter.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 18.11.22.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        NSLocalizedString("FEED_VIEW_TITLE",
                          tableName: "Feed",
                          bundle: Bundle(for: FeedPresenter.self),
                          comment: "Title for the feed view")
    }
}
