//
//  HTTPClient.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 09.08.22.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    
    func get(from url: URL, completion: @escaping (Result) -> Void)
}
