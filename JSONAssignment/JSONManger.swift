//
//  Functions.swift
//  JSONAssignment
//
//  Created by Razan Mohammed Alzannan on 07/11/1444 AH.
//

import Foundation

struct Animal: Identifiable, Decodable {
        var id: Int
        var name: String
        var age: Int
        var type: String
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
    
}

var animals: [Animal] = load("JSON.json")

