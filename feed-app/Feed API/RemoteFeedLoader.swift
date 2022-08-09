//
//  RemoteFeedLoader.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 31.07.22.
//

import Foundation

public final class RemoteFeedLoader {
    let url: URL
    let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public enum Result: Equatable  {
        case success([FeedItem])
        case failure(Error)
    }
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { result in
            switch result {
            case let .success(data, response):
                completion(self.map(data, response: response))
            case .failure:
                completion(.failure(.connectivity))
            }
        }
    }
    
    private func map(_ data: Data, response: HTTPURLResponse) -> Result {
        do {
            let items = try FeedItemMapper.map(data, response)
            return .success(items)
        } catch {
            return .failure(.invalidData)
        }
    }
}
