//
//  LengthConvertible.swift
//  LengthPackageDescription
//
//  Created by Michael Housh on 10/3/17.
//

protocol LengthConvertible: Equatable, CustomStringConvertible {
    var value: Double { get }
    var type: LengthType { get }
    
    func convert(to: LengthType) -> Self
}

// MARK: Equatable
extension LengthConvertible {
    // Objects are considered equal if their value and type match.
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.value == rhs.value && lhs.type == rhs.type
    }
}

// MARK: CustomStringConvertible
extension LengthConvertible {
    
    public var description: String {
        return "\(value) \(type.symbol)"
    }
}
