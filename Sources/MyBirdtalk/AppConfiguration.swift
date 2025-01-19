//
//  AppConfiguration.swift
//  sdk-example
//
//  Created by Bluebird Macbook on 17/01/25.
//

import Foundation

public class AppConfiguration {

    public enum Environment {
        case dev
        case staging
        case production
        case regress
    }

    public static let sharedInstance = AppConfiguration()

    public var environment: Environment = .dev
    
    public var environmentBundle: String {
        switch environment {
        case .production:
            return "com.bluebird.MyBlueBird-Production"
        case .dev, .staging, .regress:
            return "com.bluebird.MyBlueBird-DevStg"
        default:
            break
        }
    }
}
