//
//  HTTPClient.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 09.08.22.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
