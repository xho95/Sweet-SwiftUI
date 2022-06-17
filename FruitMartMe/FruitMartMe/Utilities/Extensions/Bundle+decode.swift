//
//  Bundle+decode.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/17.
//

import Foundation

extension Bundle {
    func decode<T>(_ type: T.Type, with file: String) -> T where T: Decodable {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let json = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return json
    }
}
