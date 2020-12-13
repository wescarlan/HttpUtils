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
    var urlRequest: URLRequest!
    
    override func setUp() {
        super.setUp()
        
        url = URL(string: "http://www.example.com")
        urlRequest = URLRequest(url: url!)
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
    
    // MARK: - URLRequest.addValue(_:forHTTPHeaderField:)
    
    func testAddValue_accept() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .accept)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .accept)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .accept)!.contains(mockValue))
    }
    
    func testAddValue_acceptableInstanceManipulations() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .acceptableInstanceManipulations)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .acceptableInstanceManipulations)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .acceptableInstanceManipulations)!.contains(mockValue))
    }
    
    func testAddValue_acceptCharset() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .acceptCharset)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .acceptCharset)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .acceptCharset)!.contains(mockValue))
    }
    
    func testAddValue_acceptDatetime() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .acceptDatetime)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .acceptDatetime)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .acceptDatetime)!.contains(mockValue))
    }
    
    func testAddValue_acceptEncoding() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .acceptEncoding)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .acceptEncoding)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .acceptEncoding)!.contains(mockValue))
    }
    
    func testAddValue_acceptLanguage() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .acceptLanguage)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .acceptLanguage)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .acceptLanguage)!.contains(mockValue))
    }
    
    func testAddValue_accessControlRequestMethod() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .accessControlRequestMethod)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .accessControlRequestMethod)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .accessControlRequestMethod)!.contains(mockValue))
    }
    
    func testAddValue_accessControlRequestHeaders() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .accessControlRequestHeaders)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .accessControlRequestHeaders)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .accessControlRequestHeaders)!.contains(mockValue))
    }
    
    func testAddValue_authorization() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .authorization)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .authorization)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .authorization)!.contains(mockValue))
    }
    
    func testAddValue_cacheControl() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .cacheControl)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .cacheControl)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .cacheControl)!.contains(mockValue))
    }
    
    func testAddValue_connection() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .connection)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .connection)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .connection)!.contains(mockValue))
    }
    
    func testAddValue_contentEncoding() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .contentEncoding)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .contentEncoding)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .contentEncoding)!.contains(mockValue))
    }
    
    func testAddValue_contentLength() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .contentLength)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .contentLength)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .contentLength)!.contains(mockValue))
    }
    
    func testAddValue_contentMD5() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .contentMD5)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .contentMD5)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .contentMD5)!.contains(mockValue))
    }
    
    func testAddValue_contentType() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .contentType)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .contentType)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .contentType)!.contains(mockValue))
    }
    
    func testAddValue_cookie() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .cookie)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .cookie)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .cookie)!.contains(mockValue))
    }
    
    func testAddValue_date() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .date)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .date)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .date)!.contains(mockValue))
    }
    
    func testAddValue_expect() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .expect)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .expect)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .expect)!.contains(mockValue))
    }
    
    func testAddValue_forwarded() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .forwarded)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .forwarded)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .forwarded)!.contains(mockValue))
    }
    
    func testAddValue_from() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .from)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .from)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .from)!.contains(mockValue))
    }
    
    func testAddValue_host() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .host)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .host)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .host)!.contains(mockValue))
    }
    
    func testAddValue_http2Settings() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .http2Settings)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .http2Settings)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .http2Settings)!.contains(mockValue))
    }
    
    func testAddValue_ifMatch() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .ifMatch)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .ifMatch)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .ifMatch)!.contains(mockValue))
    }
    
    func testAddValue_ifModifiedSince() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .ifModifiedSince)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .ifModifiedSince)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .ifModifiedSince)!.contains(mockValue))
    }
    
    func testAddValue_ifNoneMatch() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .ifNoneMatch)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .ifNoneMatch)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .ifNoneMatch)!.contains(mockValue))
    }
    
    func testAddValue_ifRange() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .ifRange)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .ifRange)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .ifRange)!.contains(mockValue))
    }
    
    func testAddValue_ifUnmodifiedSince() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .ifUnmodifiedSince)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .ifUnmodifiedSince)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .ifUnmodifiedSince)!.contains(mockValue))
    }
    
    func testAddValue_maxForwards() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .maxForwards)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .maxForwards)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .maxForwards)!.contains(mockValue))
    }
    
    func testAddValue_origin() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .origin)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .origin)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .origin)!.contains(mockValue))
    }
    
    func testAddValue_pragma() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .pragma)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .pragma)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .pragma)!.contains(mockValue))
    }
    
    func testAddValue_proxyAuthorization() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .proxyAuthorization)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .proxyAuthorization)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .proxyAuthorization)!.contains(mockValue))
    }
    
    func testAddValue_range() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .range)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .range)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .range)!.contains(mockValue))
    }
    
    func testAddValue_referer() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .referer)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .referer)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .referer)!.contains(mockValue))
    }
    
    func testAddValue_transferEncodings() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .transferEncodings)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .transferEncodings)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .transferEncodings)!.contains(mockValue))
    }
    
    func testAddValue_trailer() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .trailer)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .trailer)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .trailer)!.contains(mockValue))
    }
    
    func testAddValue_transferEncoding() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .transferEncoding)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .transferEncoding)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .transferEncoding)!.contains(mockValue))
    }
    
    func testAddValue_userAgent() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .userAgent)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .userAgent)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .userAgent)!.contains(mockValue))
    }
    
    func testAddValue_upgrade() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .upgrade)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .upgrade)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .upgrade)!.contains(mockValue))
    }
    
    func testAddValue_via() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .via)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .via)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .via)!.contains(mockValue))
    }
    
    func testAddValue_warning() {
        let mockValue = "mock value"
        urlRequest.setValue("previous value", forHTTPHeaderField: .warning)
        urlRequest.addValue(mockValue, forHTTPHeaderField: .warning)
        XCTAssertTrue(urlRequest.value(forHTTPHeaderField: .warning)!.contains(mockValue))
    }
    
    // MARK: - URLRequest.setValue(_:forHTTPHeaderField:)
    
    func testSetValue_accept() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .accept)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .accept))
    }
    
    func testSetValue_acceptableInstanceManipulations() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .acceptableInstanceManipulations)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .acceptableInstanceManipulations))
    }
    
    func testSetValue_acceptCharset() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .acceptCharset)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .acceptCharset))
    }
    
    func testSetValue_acceptDatetime() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .acceptDatetime)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .acceptDatetime))
    }
    
    func testSetValue_acceptEncoding() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .acceptEncoding)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .acceptEncoding))
    }
    
    func testSetValue_acceptLanguage() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .acceptLanguage)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .acceptLanguage))
    }
    
    func testSetValue_accessControlRequestMethod() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .accessControlRequestMethod)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .accessControlRequestMethod))
    }
    
    func testSetValue_accessControlRequestHeaders() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .accessControlRequestHeaders)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .accessControlRequestHeaders))
    }
    
    func testSetValue_authorization() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .authorization)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .authorization))
    }
    
    func testSetValue_cacheControl() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .cacheControl)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .cacheControl))
    }
    
    func testSetValue_connection() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .connection)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .connection))
    }
    
    func testSetValue_contentEncoding() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .contentEncoding)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .contentEncoding))
    }
    
    func testSetValue_contentLength() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .contentLength)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .contentLength))
    }
    
    func testSetValue_contentMD5() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .contentMD5)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .contentMD5))
    }
    
    func testSetValue_contentType() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .contentType)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .contentType))
    }
    
    func testSetValue_cookie() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .cookie)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .cookie))
    }
    
    func testSetValue_date() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .date)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .date))
    }
    
    func testSetValue_expect() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .expect)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .expect))
    }
    
    func testSetValue_forwarded() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .forwarded)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .forwarded))
    }
    
    func testSetValue_from() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .from)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .from))
    }
    
    func testSetValue_host() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .host)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .host))
    }
    
    func testSetValue_http2Settings() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .http2Settings)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .http2Settings))
    }
    
    func testSetValue_ifMatch() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .ifMatch)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .ifMatch))
    }
    
    func testSetValue_ifModifiedSince() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .ifModifiedSince)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .ifModifiedSince))
    }
    
    func testSetValue_ifNoneMatch() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .ifNoneMatch)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .ifNoneMatch))
    }
    
    func testSetValue_ifRange() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .ifRange)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .ifRange))
    }
    
    func testSetValue_ifUnmodifiedSince() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .ifUnmodifiedSince)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .ifUnmodifiedSince))
    }
    
    func testSetValue_maxForwards() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .maxForwards)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .maxForwards))
    }
    
    func testSetValue_origin() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .origin)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .origin))
    }
    
    func testSetValue_pragma() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .pragma)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .pragma))
    }
    
    func testSetValue_proxyAuthorization() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .proxyAuthorization)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .proxyAuthorization))
    }
    
    func testSetValue_range() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .range)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .range))
    }
    
    func testSetValue_referer() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .referer)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .referer))
    }
    
    func testSetValue_transferEncodings() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .transferEncodings)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .transferEncodings))
    }
    
    func testSetValue_trailer() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .trailer)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .trailer))
    }
    
    func testSetValue_transferEncoding() {
        let mockValue = "mock value"
        urlRequest.addValue(mockValue, forHTTPHeaderField: .transferEncoding)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .transferEncoding))
    }
    
    func testSetValue_userAgent() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .userAgent)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .userAgent))
    }
    
    func testSetValue_upgrade() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .upgrade)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .upgrade))
    }
    
    func testSetValue_via() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .via)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .via))
    }
    
    func testSetValue_warning() {
        let mockValue = "mock value"
        urlRequest.setValue(mockValue, forHTTPHeaderField: .warning)
        XCTAssertEqual(mockValue, urlRequest.value(forHTTPHeaderField: .warning))
    }
    
    // MARK: - URLRequest.accept(_:)
    
    func testAccept_emptyArray() {
        let mockAcceptedMediaTypes: [HTTP.Header.Value.MediaType] = []
        urlRequest.accept(mockAcceptedMediaTypes)
        XCTAssertEqual("", urlRequest.value(forHTTPHeaderField: .accept))
    }
    
    func testAccept_nonEmptyArray() {
        let mockAcceptedMediaTypes: [HTTP.Header.Value.MediaType] = [.application(.json), .audio(.mpeg), .image(.gif)]
        urlRequest.accept(mockAcceptedMediaTypes)
        XCTAssertEqual("application/json, audio/mpeg, image/gif", urlRequest.value(forHTTPHeaderField: .accept))
    }
    
    // MARK: - URLRequest.acceptLanguages(_:)
    
    func testAcceptLanguages_emptyArray() {
        let mockAcceptedLanguages: [Locale] = []
        urlRequest.acceptLanguages(mockAcceptedLanguages)
        XCTAssertEqual("", urlRequest.value(forHTTPHeaderField: .acceptLanguage))
    }
    
    func testAcceptLanguages_nonEmptyArray() {
        let mockAcceptedLanguages: [Locale] = [.init(identifier: "en_US"), .init(identifier: "en_GB")]
        urlRequest.acceptLanguages(mockAcceptedLanguages)
        XCTAssertEqual("en_US, en_GB", urlRequest.value(forHTTPHeaderField: .acceptLanguage))
    }
    
    // MARK: - URLRequest.accessControlRequestMethod(_:)
    
    func testAccessControlRequestMethod_get() {
        urlRequest.accessControlRequestMethod(.get)
        XCTAssertEqual("GET", urlRequest.value(forHTTPHeaderField: .accessControlRequestMethod))
    }
    
    func testAccessControlRequestMethod_post() {
        urlRequest.accessControlRequestMethod(.post)
        XCTAssertEqual("POST", urlRequest.value(forHTTPHeaderField: .accessControlRequestMethod))
    }
    
    func testAccessControlRequestMethod_put() {
        urlRequest.accessControlRequestMethod(.put)
        XCTAssertEqual("PUT", urlRequest.value(forHTTPHeaderField: .accessControlRequestMethod))
    }
    
    func testAccessControlRequestMethod_delete() {
        urlRequest.accessControlRequestMethod(.delete)
        XCTAssertEqual("DELETE", urlRequest.value(forHTTPHeaderField: .accessControlRequestMethod))
    }
    
    func testAccessControlRequestMethod_any() {
        urlRequest.accessControlRequestMethod(.any)
        XCTAssertEqual("ANY", urlRequest.value(forHTTPHeaderField: .accessControlRequestMethod))
    }
    
    // MARK: - URLRequest.setCookies(_:)
    
    func testSetCookies_emptyArray() {
        let mockCookies: [HTTPCookie] = []
        urlRequest.setCookies(mockCookies)
        XCTAssertNil(urlRequest.allHTTPHeaderFields)
    }
    
    func testSetCookies_nonEmptyArray() {
        let mockCookieName = "__cookie_name"
        let mockCookieValue = "cookie value"
        let cookie = HTTPCookie(properties: [
            .domain: url.host!,
            .path: "/",
            .name: mockCookieName,
            .value: mockCookieValue
        ])
        
        let mockCookies: [HTTPCookie] = [cookie!]
        urlRequest.setCookies(mockCookies)
        XCTAssertEqual("\(mockCookieName)=\(mockCookieValue)", urlRequest.value(forHTTPHeaderField: "Cookie"))
    }
    
    // MARK: - URLRequest.setHostHeader(_:)
    
    func testSetHostHeader_nil() {
        urlRequest.setHostHeader(nil)
        XCTAssertNil(urlRequest.value(forHTTPHeaderField: .host))
    }
    
    func testSetHostHeader_nilHost() {
        let mockUrl = URL(string: "https://")
        urlRequest.setHostHeader(mockUrl)
        XCTAssertNil(urlRequest.value(forHTTPHeaderField: .host))
    }
    
    func testSetHostHeader_nilPort() {
        let mockUrl = URL(string: "https://www.example.com")
        urlRequest.setHostHeader(mockUrl)
        XCTAssertEqual("www.example.com", urlRequest.value(forHTTPHeaderField: .host))
    }
    
    func testSetHostHeader_withPort() {
        let mockUrl = URL(string: "https://www.example.com:8080")
        urlRequest.setHostHeader(mockUrl)
        XCTAssertEqual("www.example.com:8080", urlRequest.value(forHTTPHeaderField: .host))
    }
    
    // MARK: - URLRequest.setOriginHeader(_:)
    
    func testSetOriginHeader_nil() {
        urlRequest.setOriginHeader(nil)
        XCTAssertNil(urlRequest.value(forHTTPHeaderField: .origin))
    }
    
    func testSetOriginHeader() {
        let mockUrl = URL(string: "https://www.example.com:8080")
        urlRequest.setOriginHeader(mockUrl)
        XCTAssertEqual("https://www.example.com:8080", urlRequest.value(forHTTPHeaderField: .origin))
    }
    
    // MARK: - URLRequest.setTransferEncoding(_:)
    
    func testSetTransferEncoding_emptyArray() {
        let mockTransferEncodingTypes: [HTTP.Header.Value.TransferEncodingType] = []
        urlRequest.setTransferEncoding(mockTransferEncodingTypes)
        XCTAssertEqual("", urlRequest.value(forHTTPHeaderField: .transferEncoding))
    }
    
    func testSetTransferEncoding_nonEmptyArray() {
        let mockTransferEncodingTypes: [HTTP.Header.Value.TransferEncodingType] = [.chunked, .compress, .gzip]
        urlRequest.setTransferEncoding(mockTransferEncodingTypes)
        XCTAssertEqual("chunked, compress, gzip", urlRequest.value(forHTTPHeaderField: .transferEncoding))
    }
}
