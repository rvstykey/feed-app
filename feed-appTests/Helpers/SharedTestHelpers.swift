//
//  SharedTestHelpers.swift
//  feed-appTests
//
//  Created by Rostislav Zapolsky on 30.08.22.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    return Data("any data".utf8)
}
