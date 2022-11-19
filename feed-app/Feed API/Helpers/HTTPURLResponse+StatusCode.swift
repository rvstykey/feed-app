//
//  HTTPURLResponse+StatusCode.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 19.11.22.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
