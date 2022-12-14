//
//  FeedUIIntegrationTests+Localization.swift
//  feed-app-iOSTests
//
//  Created by Rostislav Zapolsky on 17.11.22.
//

import Foundation
import XCTest
import feed_app

extension FeedUIIntegrationTests {
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }
    
    var feedTitle: String {
        FeedPresenter.title
    }
}
