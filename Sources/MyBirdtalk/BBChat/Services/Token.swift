//
//  Token.swift
//  sdk-example
//
//  Created by Bluebird Macbook on 17/01/25.
//

import Foundation

public struct Token: Codable {
    public var accessToken: String
    public var expiredIn: Int64
    public var refreshToken: String
    public var refreshExpiresIn: Int64
    
    public init(accessToken: String, expiredIn: Int64, refreshToken: String, refreshExpiresIn: Int64) {
        self.accessToken = accessToken
        self.expiredIn = expiredIn
        self.refreshToken = refreshToken
        self.refreshExpiresIn = refreshExpiresIn
    }
    
}
