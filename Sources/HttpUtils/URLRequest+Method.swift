//
//  URLRequest+Method.swift
//  HTTPUtils
//
//  Created by Wesley on 8/16/20.
//

import Foundation

#if os(Linux)
import FoundationNetworking
#endif

public extension URLRequest {
    mutating func setMethod(_ method: HTTP.Method) {
        httpMethod = method.rawValue
    }
}
