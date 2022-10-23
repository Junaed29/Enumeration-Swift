//
//  Greeting.swift
//  Enumeration Swift
//
//  Created by Junaed Muhammad Chowdhury on 23/10/22.
//

import Foundation

enum Greeting {
    case spanish(period: SpanishGreeting)
    case german(period: GermanGreeting)
    
    var value: String{
        switch self {
        case .spanish(let period):
            return period.rawValue
        case .german(let period):
            return period.rawValue
        }
    }
}

enum SpanishGreeting: String {
    case morning    = "Buenos Dias"
    case afternoon  = "Buenas Tardes"
    case night      = "Buenas Noches"
}

enum GermanGreeting: String {
    case morning    = "Guten Morgan"
    case afternoon  = "Guten Tag"
    case night      = "Guta Nacht"
}
