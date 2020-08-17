//
//  HTTPURLResponse+Headers.swift
//  HttpUtils
//
//  Created by Wesley on 8/23/20.
//

import Foundation

#if os(Linux)
import FoundationNetworking
#endif

public extension HTTPURLResponse {
    #if !os(Linux)
    @available(macOS 10.15, macCatalyst 13.0, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    func value(forHttpHeaderField headerField: HTTP.Header.ResponseField) -> String? {
        return self.value(forHTTPHeaderField: headerField.rawValue)
    }
    #endif
}
