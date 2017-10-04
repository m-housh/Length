//
//  Length.swift
//  Length
//
//  Created by Michael Housh on 10/3/17.
//



struct Length {
    let type: LengthType
    let value: Double
    
    init(_ value: Double, type: LengthType = .inches) {
        self.value = value
        self.type = type
    }
}

// MARK: CustomStringConvertible
extension Length: CustomStringConvertible {
    var description: String {
        return "\(value) \(type.symbol)"
    }
}

// MARK: LengthConvertible
extension Length: LengthConvertible {
    
    private func convertToInches() -> Double {
        switch type {
        case .feet:
            return value * 12.0
        case .meters:
            return value * 39.370078740157
        case .centimeters:
            return value * 0.39370078740157
        default:  // we're already inches
            return value
        }
        
    }
    
    func convert(to lengthType: LengthType) -> Length {
        let value: Double
        switch lengthType {
        case .inches:
            value = convertToInches()
        case .feet:
            value = convertToInches() / 12
        case .meters:
            value = convertToInches() / 39.370078740157
        case .centimeters:
            value = convertToInches() / 0.39370078740157
        }
        return Length(value, type: lengthType)
    }
}
