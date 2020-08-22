//
//  HTTP+HeaderValue.swift
//  HttpUtils
//
//  Created by Wesley on 8/16/20.
//

extension HTTP.Header.Value {
    public enum MediaType: RawRepresentable, Equatable {
        public typealias RawValue = String
        
        case all
        case application(_ mediaType: ApplicationMediaType)
        case audio(_ mediaType: AudioMediaType)
        case image(_ mediaType: ImageMediaType)
        case multipart(_ mediaType: MultipartMediaType)
        case text(_ mediaType: TextMediaType)
        
        public init?(rawValue: String) {
            let splitValues = rawValue.split(separator: "/")
            guard splitValues.count == 2, let mediaType = splitValues.first, let mediaValue = splitValues.last else { return nil }
            
            let mediaTypeString = String(mediaType)
            let mediaValueString = String(mediaValue)
            
            switch mediaTypeString {
            case "*":
                self = .all
            case "application":
                guard let applicationType = ApplicationMediaType(rawValue: mediaValueString) else { return nil }
                self = .application(applicationType)
            case "audio":
                guard let audioType = AudioMediaType(rawValue: mediaValueString) else { return nil }
                self = .audio(audioType)
            case "image":
                guard let imageType = ImageMediaType(rawValue: mediaValueString) else { return nil }
                self = .image(imageType)
            case "multipart":
                guard let multipartType = MultipartMediaType(rawValue: mediaValueString) else { return nil }
                self = .multipart(multipartType)
            case "text":
                guard let textType = TextMediaType(rawValue: mediaValueString) else { return nil }
                self = .text(textType)
            default:
                return nil
            }
        }
        
        public var rawValue: String {
            switch self {
            case .all:
                return "*/*"
            case .application(let mediaType):
                return "application/\(mediaType.rawValue)"
            case .audio(let mediaType):
                return "audio/\(mediaType.rawValue)"
            case .image(let mediaType):
                return "image/\(mediaType.rawValue)"
            case .multipart(let mediaType):
                return "multipart/\(mediaType.rawValue)"
            case .text(let mediaType):
                return "text/\(mediaType.rawValue)"
            }
        }
    }
    
    public enum ApplicationMediaType: String {
        case all = "*"
        case doc = "msword"
        case formUrlEncoded = "x-www-form-urlencoded"
        case graphQL = "graphql"
        case javascript
        case json
        case ldJson = "ld+json"
        case pdf
        case sql
        case vndApiJson = "vnd.api+json"
        case vndDocx = "vnd.openxmlformats-officedocument.wordprocessingml.document"
        case vndOdt = "vnd.oasis.opendocument.text"
        case vndPpt = "vnd.ms-powerpoint"
        case vndPptx = "vnd.openxmlformats-officedocument.presentationml.presentation"
        case vndXls = "vnd.ms-excel"
        case vndXlsx = "vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        case xml
        case zip
        case zst = "zstd"
    }
    
    public enum AudioMediaType: String {
        case all = "*"
        case mpeg
        case ogg
    }
    
    public enum ImageMediaType: String {
        case all = "*"
        case apng
        case flif
        case gif
        case jpeg
        case mng = "x-mng"
        case png
        case webp
    }
    
    public enum MultipartMediaType: String {
        case all = "*"
        case formData = "form-data"
    }
    
    public enum TextMediaType: String {
        case all = "*"
        case css
        case csv
        case html
        case php
        case plain
        case xml
    }
    
    public enum TransferEncodingType: String {
        case chunked
        case compress
        case deflate
        case gzip
        case identity
    }
}
