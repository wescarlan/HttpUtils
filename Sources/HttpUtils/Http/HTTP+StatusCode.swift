//
//  HTTP+StatusCode.swift
//  HttpUtils
//
//  Created by Wesley on 8/16/20.
//

public extension HTTP.StatusCode {
    static let informationRange = 100...199
    static let successRange = 200...299
    static let redirectRange = 300...399
    static let clientErrorRange = 400...499
    static let internalServerErrorRange = 500...599
}
