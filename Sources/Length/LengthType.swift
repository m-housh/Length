//
//  LengthType.swift
//  Length
//
//  Created by Michael Housh on 10/3/17.
//

enum LengthType {
    /* Represents the units of length.
     
    */
    case inches, feet, meters, centimeters
    
    var symbol: String {
        switch self {
        case .inches:
            return "in"
        case .feet:
            return "ft"
        case .meters:
            return "m"
        case .centimeters:
            return "cm"
        }
    }
}
