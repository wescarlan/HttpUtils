//
//  HttpStatusCodeUtilsTests.swift
//  HttpUtils
//
//  Created by Wesley on 8/23/20.
//

import XCTest

#if os(Linux)
import FoundationNetworking
#endif

@testable import HttpUtils

class HttpStatusCodeUtilsTests: XCTestCase {
    
    var url: URL!
    
    override func setUp() {
        super.setUp()
        
        url = URL(string: "http://www.example.com")
    }
    
    // MARK: - HTTP.StatusCode ranges
    
    func testInformationRange() {
        var urlResponse = HTTPURLResponse(url: url, statusCode: 100, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.informationRange ~= urlResponse!.statusCode)
        
        urlResponse = HTTPURLResponse(url: url, statusCode: 199, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.informationRange ~= urlResponse!.statusCode)
    }
    
    func testSuccessRange() {
        var urlResponse = HTTPURLResponse(url: url, statusCode: 200, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.successRange ~= urlResponse!.statusCode)
        
        urlResponse = HTTPURLResponse(url: url, statusCode: 299, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.successRange ~= urlResponse!.statusCode)
    }
    
    func testRedirectRange() {
        var urlResponse = HTTPURLResponse(url: url, statusCode: 300, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.redirectRange ~= urlResponse!.statusCode)
        
        urlResponse = HTTPURLResponse(url: url, statusCode: 399, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.redirectRange ~= urlResponse!.statusCode)
    }
    
    func testClientErrorRange() {
        var urlResponse = HTTPURLResponse(url: url, statusCode: 400, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.clientErrorRange ~= urlResponse!.statusCode)
        
        urlResponse = HTTPURLResponse(url: url, statusCode: 499, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.clientErrorRange ~= urlResponse!.statusCode)
    }
    
    func testInternalServerErrorRange() {
        var urlResponse = HTTPURLResponse(url: url, statusCode: 500, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.internalServerErrorRange ~= urlResponse!.statusCode)
        
        urlResponse = HTTPURLResponse(url: url, statusCode: 599, httpVersion: nil, headerFields: nil)
        XCTAssertTrue(HTTP.StatusCode.internalServerErrorRange ~= urlResponse!.statusCode)
    }
}
