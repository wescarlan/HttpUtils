//
//  HttpHeaderUtilsTests.swift
//  HttpUtils
//
//  Created by Wesley on 8/22/20.
//

import XCTest

#if os(Linux)
import FoundationNetworking
#endif

@testable import HttpUtils

final class HttpHeaderUtilsTests: XCTestCase {
    
    var url: URL!
    
    override func setUp() {
        super.setUp()
        
        url = URL(string: "http://www.example.com")
    }
    
    // MARK: - HTTP.Header.Value.MediaType.init?(rawValue:)
    // MARK: nil
    
    func testInitMediaType_invalidFormat() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "invalid format")
        XCTAssertNil(mediaType)
    }
    
    func testInitMediaType_invalidMediaType() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "invalid media type/invalid type")
        XCTAssertNil(mediaType)
    }
    
    func testInitMediaType_application_invalid() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/invalid type")
        XCTAssertNil(mediaType)
    }
    
    func testInitMediaType_audio_invalid() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "audio/invalid type")
        XCTAssertNil(mediaType)
    }
    
    func testInitMediaType_image_invalid() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/invalid type")
        XCTAssertNil(mediaType)
    }
    
    func testInitMediaType_multipart_invalid() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "multipart/invalid type")
        XCTAssertNil(mediaType)
    }
    
    func testInitMediaType_text_invalid() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/invalid type")
        XCTAssertNil(mediaType)
    }
    
    // MARK: MediaType.all
    
    func testInitMediaType_all() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "*/*")
        XCTAssertEqual(HTTP.Header.Value.MediaType.all, mediaType)
    }
    
    // MARK: MediaType.application
    
    func testInitMediaType_application_all() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/*")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.all), mediaType)
    }
    
    func testInitMediaType_application_doc() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/msword")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.doc), mediaType)
    }
    
    func testInitMediaType_application_formUrlEncoded() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/x-www-form-urlencoded")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.formUrlEncoded), mediaType)
    }
    
    func testInitMediaType_application_graphQL() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/graphql")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.graphQL), mediaType)
    }
    
    func testInitMediaType_application_javascript() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/javascript")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.javascript), mediaType)
    }
    
    func testInitMediaType_application_json() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/json")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.json), mediaType)
    }
    
    func testInitMediaType_application_ldJson() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/ld+json")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.ldJson), mediaType)
    }
    
    func testInitMediaType_application_pdf() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/pdf")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.pdf), mediaType)
    }
    
    func testInitMediaType_application_sql() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/sql")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.sql), mediaType)
    }
    
    func testInitMediaType_application_vndApiJson() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/vnd.api+json")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.vndApiJson), mediaType)
    }
    
    func testInitMediaType_application_vndDocx() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/vnd.openxmlformats-officedocument.wordprocessingml.document")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.vndDocx), mediaType)
    }
    
    func testInitMediaType_application_vndOdt() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/vnd.oasis.opendocument.text")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.vndOdt), mediaType)
    }
    
    func testInitMediaType_application_vndPpt() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/vnd.ms-powerpoint")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.vndPpt), mediaType)
    }
    
    func testInitMediaType_application_vndPptx() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/vnd.openxmlformats-officedocument.presentationml.presentation")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.vndPptx), mediaType)
    }
    
    func testInitMediaType_application_vndXls() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/vnd.ms-excel")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.vndXls), mediaType)
    }
    
    func testInitMediaType_application_vndXlsx() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.vndXlsx), mediaType)
    }
    
    func testInitMediaType_application_xml() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/xml")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.xml), mediaType)
    }
    
    func testInitMediaType_application_zip() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/zip")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.zip), mediaType)
    }
    
    func testInitMediaType_application_zst() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "application/zstd")
        XCTAssertEqual(HTTP.Header.Value.MediaType.application(.zst), mediaType)
    }
    
    // MARK: MediaType.audio
    
    func testInitMediaType_audio_all() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "audio/*")
        XCTAssertEqual(HTTP.Header.Value.MediaType.audio(.all), mediaType)
    }
    
    func testInitMediaType_audio_mpeg() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "audio/mpeg")
        XCTAssertEqual(HTTP.Header.Value.MediaType.audio(.mpeg), mediaType)
    }
    
    func testInitMediaType_audio_ogg() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "audio/ogg")
        XCTAssertEqual(HTTP.Header.Value.MediaType.audio(.ogg), mediaType)
    }
    
    // MARK: MediaType.image
    
    func testInitMediaType_image_all() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/*")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.all), mediaType)
    }
    
    func testInitMediaType_image_apng() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/apng")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.apng), mediaType)
    }

    func testInitMediaType_image_flif() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/flif")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.flif), mediaType)
    }
    
    func testInitMediaType_image_gif() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/gif")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.gif), mediaType)
    }
    
    func testInitMediaType_image_jpeg() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/jpeg")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.jpeg), mediaType)
    }
    
    func testInitMediaType_image_mng() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/x-mng")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.mng), mediaType)
    }
    
    func testInitMediaType_image_png() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/png")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.png), mediaType)
    }
    
    func testInitMediaType_image_webp() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "image/webp")
        XCTAssertEqual(HTTP.Header.Value.MediaType.image(.webp), mediaType)
    }
    
    // MARK: MediaType.multipart
    
    func testInitMediaType_multipart_all() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "multipart/*")
        XCTAssertEqual(HTTP.Header.Value.MediaType.multipart(.all), mediaType)
    }
    
    func testInitMediaType_multipart_formData() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "multipart/form-data")
        XCTAssertEqual(HTTP.Header.Value.MediaType.multipart(.formData), mediaType)
    }
    
    // MARK: MediaType.text
    
    func testInitMediaType_text_all() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/*")
        XCTAssertEqual(HTTP.Header.Value.MediaType.text(.all), mediaType)
    }
    
    func testInitMediaType_text_css() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/css")
        XCTAssertEqual(HTTP.Header.Value.MediaType.text(.css), mediaType)
    }
    
    func testInitMediaType_text_csv() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/csv")
        XCTAssertEqual(HTTP.Header.Value.MediaType.text(.csv), mediaType)
    }
    
    func testInitMediaType_text_html() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/html")
        XCTAssertEqual(HTTP.Header.Value.MediaType.text(.html), mediaType)
    }
    
    func testInitMediaType_text_php() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/php")
        XCTAssertEqual(HTTP.Header.Value.MediaType.text(.php), mediaType)
    }
    
    func testInitMediaType_text_plain() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/plain")
        XCTAssertEqual(HTTP.Header.Value.MediaType.text(.plain), mediaType)
    }
    
    func testInitMediaType_text_xml() {
        let mediaType = HTTP.Header.Value.MediaType(rawValue: "text/xml")
        XCTAssertEqual(HTTP.Header.Value.MediaType.text(.xml), mediaType)
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
