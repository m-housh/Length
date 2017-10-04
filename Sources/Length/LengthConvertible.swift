//
//  LengthConvertible.swift
//  LengthPackageDescription
//
//  Created by Michael Housh on 10/3/17.
//

protocol LengthConvertible: Equatable {
    var value: Double { get }
    var type: LengthType { get }
    
    func convert(to: LengthType) -> Self
}

// MARK: Equatable
// Add's equatable to any object that implements the
// LengthConvertible protocol.
extension LengthConvertible {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.value == rhs.value && lhs.type == rhs.type
    }
}
