//
//  JSONView.swift
//  JSONAssignment
//
//  Created by Razan Mohammed Alzannan on 07/11/1444 AH.
//

import SwiftUI

struct JSONView: View {
    var animals : [Animal]
    var body: some View {
        VStack {
                        ForEach(animals) { animal in
                                Text("\(animal.name) is a \(animal.type) and is \(animal.age) years old.")
                        }
                }
    }
}

struct JSONView_Previews: PreviewProvider {
    static var previews: some View {
        JSONView(animals: <#[Animal]#>)
    }
}
