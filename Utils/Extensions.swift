//
//  Extensions.swift
//  WWDC23
//
//  Created by Edoardo Troianiello on 13/04/23.
//

import Foundation

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
