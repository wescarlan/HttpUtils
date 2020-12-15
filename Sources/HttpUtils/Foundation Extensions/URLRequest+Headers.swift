//
//  URLRequest+Headers.swift
//  HttpUtils
//
//  Created by Wesley on 8/16/20.
//

import Foundation

#if os(Linux)
import FoundationNetworking
#endif

public extension URLRequest {
    mutating func addValue(_ value: String, forHTTPHeaderField headerField: HTTP.Header.RequestField) {
        self.addValue(value, forHTTPHeaderField: headerField.rawValue)
    }
    
    mutating func setValue(_ value: String?, forHTTPHeaderField headerField: HTTP.Header.RequestField) {
        self.setValue(value, forHTTPHeaderField: headerField.rawValue)
    }
    
    func value(forHTTPHeaderField headerField: HTTP.Header.RequestField) -> String? {
        return self.value(forHTTPHeaderField: headerField.rawValue)
    }
    
    mutating func accept(_ mediaTypes: [HTTP.Header.Value.MediaType]) {
        let acceptedTypes = mediaTypes.map({ $0.rawValue }).joined(separator: ", ")
        setValue(acceptedTypes, forHTTPHeaderField: .accept)
    }
    
    mutating func acceptLanguages(_ languages: [Locale]) {
        let acceptedLanguages = languages.map({ $0.identifier }).joined(separator: ", ")
        setValue(acceptedLanguages, forHTTPHeaderField: .acceptLanguage)
    }
    
    mutating func accessControlRequestMethod(_ method: HTTP.Method) {
        setValue(method.rawValue, forHTTPHeaderField: .accessControlRequestMethod)
    }
    
    mutating func setCookies(_ cookies: [HTTPCookie]) {
        let headers = HTTPCookie.requestHeaderFields(with: cookies)
        headers.forEach { (field: String, value: String) in
            setValue(value, forHTTPHeaderField: field)
        }
    }
    
    mutating func setHostHeader(_ hostUrl: URL?) {
        var fullHostString: String?
        
        if let hostString = hostUrl?.host {
            fullHostString = hostString
        }
        
        if let port = hostUrl?.port {
            fullHostString?.append(":\(port)")
        }
        
        setValue(fullHostString, forHTTPHeaderField: .host)
    }
    
    mutating func setOriginHeader(_ originUrl: URL?) {
        setValue(originUrl?.absoluteString, forHTTPHeaderField: .origin)
    }
    
    mutating func setTransferEncoding(_ encodingTypes: [HTTP.Header.Value.TransferEncodingType]) {
        let transferEncodingTypes = encodingTypes.map({ $0.rawValue }).joined(separator: ", ")
        setValue(transferEncodingTypes, forHTTPHeaderField: .transferEncoding)
    }
}
