//
//  HttpMethodUtilsTests.swift
//  HttpUtils
//
//  Created by Wesley on 8/22/20.
//

import XCTest

#if os(Linux)
import FoundationNetworking
#endif

@testable import HttpUtils

final class HttpMethodUtilsTests: XCTestCase {
    
    var url: URL!
    var urlRequest: URLRequest!
    
    override func setUp() {
        super.setUp()
        
        url = URL(string: "http://www.example.com")
        urlRequest = URLRequest(url: url!)
    }
    
    // MARK: - URLRequest.init(url:method:)
    
    func testInitWithMethod_get() {
        let urlRequest = URLRequest(url: url, method: .get)
        XCTAssertEqual("GET", urlRequest.httpMethod)
    }
    
    func testInitWithMethod_post() {
        let urlRequest = URLRequest(url: url, method: .post)
        XCTAssertEqual("POST", urlRequest.httpMethod)
    }
    
    func testInitWithMethod_put() {
        let urlRequest = URLRequest(url: url, method: .put)
        XCTAssertEqual("PUT", urlRequest.httpMethod)
    }
    
    func testInitWithMethod_delete() {
        let urlRequest = URLRequest(url: url, method: .delete)
        XCTAssertEqual("DELETE", urlRequest.httpMethod)
    }
    
    func testInitWithMethod_any() {
        let urlRequest = URLRequest(url: url, method: .any)
        XCTAssertEqual("ANY", urlRequest.httpMethod)
    }
    
    // MARK: - URLRequest.setMethod(_:)
    
    func testSetMethod_get() {
        urlRequest.setMethod(.get)
        XCTAssertEqual("GET", urlRequest.httpMethod)
    }
    
    func testSetMethod_post() {
        urlRequest.setMethod(.post)
        XCTAssertEqual("POST", urlRequest.httpMethod)
    }
    
    func testSetMethod_put() {
        urlRequest.setMethod(.put)
        XCTAssertEqual("PUT", urlRequest.httpMethod)
    }
    
    func testSetMethod_delete() {
        urlRequest.setMethod(.delete)
        XCTAssertEqual("DELETE", urlRequest.httpMethod)
    }
    
    func testSetMethod_any() {
        urlRequest.setMethod(.any)
        XCTAssertEqual("ANY", urlRequest.httpMethod)
    }
}
