//
//  SafeCoder.swift
//  ISupportKit
//
//  Created by i_terasaka on 2018/06/24.
//  Copyright © 2018年 kichiemon. All rights reserved.
//

import Foundation

public struct SafeDecoder<Wrapped: Decodable>: Codable {
    public let value: Wrapped?

    public init(from decoder: Decoder) throws {
        do {
            let container = try decoder.singleValueContainer()
            self.value = try container.decode(Wrapped.self)
        } catch {
            self.value = nil
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
