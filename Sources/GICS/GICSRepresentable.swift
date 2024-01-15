//
//  GICSRepresentable.swift
//  The Global Industry Classification Standard (GICS)
//
//  Copyright © 2024 Joey GM. All rights reserved.
//

import Foundation

/**
 A protocol that represents the Global Industry Classification Standard (GICS).
 
 Types that conform to the GICSRepresentable protocol are representations of the Global Industry Classification Standard structure. These types are typically enumerations with an associated raw value that corresponds to the GICS numeric code.
 
 The GICSRepresentable protocol leverages the hierarchical design of the 8-digit GICS coding system, allowing for easy transition between ``GICS`` tiers and the extraction of the relevant information and definitions.
 
 Conforming to the GICSRepresentable Protocol
 ===================================
 Add `GICSRepresentable` conformance to your custom types by defining an associated `RawValue` type that corresponds to the unique GICS Code represented in a 32-bit unsigned integer.
 */
public protocol GICSRepresentable: CaseIterable, Codable, CustomStringConvertible, Equatable, Identifiable, RawRepresentable where RawValue == GICS.Code {
    
}

extension GICSRepresentable {
    
    /**
     The GICS Description.
     
     The GICS descriptions are based on the GICS structure effective March 2023.
     - Available localizations:
     [English](https://www.msci.com/documents/1296102/11185224/GICS+Map+2023.xlsx),
     [French](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_French.xlsx),
     [German](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_German.xlsx),
     [Italian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Italian.xlsx),
     [Japanese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Japanese.xlsx),
     [Korean](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Korean.xlsx),
     [Portuguese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Portuguese.xlsx),
     [Russian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Russian.xlsx),
     [Simplified Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Simplified+Chinese.xlsx),
     [Traditional Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Traditional+Chinese.xlsx), and
     [Spanish](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Spanish.xlsx).
     */
    public var description: String {
        Bundle.module.localizedString(forKey: rawValue.description, value: nil, table: nil)
    }
    
    /**
     The GICS Definition.
     
     The definitions for GICS Sector and GICS Sub-Industry are based on the GICS structure effective March 2023.
     - Available localizations for GICS Sector:
     [English](https://www.msci.com/documents/1296102/11185224/GICS+Sector+Definitions+2023.pdf),
     [Japanese](https://www.spglobal.com/spdji/jp/landing/topic/gics/),
     [Korean](https://www.spglobal.com/spdji/kr/landing/topic/gics/),
     [Portuguese](https://www.spglobal.com/spdji/pt/landing/topic/gics/),
     [Simplified Chinese](https://www.spglobal.com/spdji/zh/landing/topic/gics/),
     [Traditional Chinese](https://www.spglobal.com/spdji/tc/landing/topic/gics/), and
     [Spanish](https://www.spglobal.com/spdji/es/landing/topic/gics/).
     - Available localizations for GICS Sub-Industry:
     [English](https://www.msci.com/documents/1296102/11185224/GICS+Map+2023.xlsx),
     [French](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_French.xlsx),
     [German](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_German.xlsx),
     [Italian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Italian.xlsx),
     [Japanese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Japanese.xlsx),
     [Korean](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Korean.xlsx),
     [Portuguese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Portuguese.xlsx),
     [Russian](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Russian.xlsx),
     [Simplified Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Simplified+Chinese.xlsx),
     [Traditional Chinese](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Traditional+Chinese.xlsx), and
     [Spanish](https://www.msci.com/documents/1296102/11185315/GICS+Structure_2023_Spanish.xlsx).
     
     - Remark: For GICS Industry Groups and GICS Industries where the definitions are unavailable, this value is equivalent to the GICS short description.
     */
    public var definition: String {
        let rawValue = rawValue
        return Bundle.module.localizedString(forKey: rawValue.description, value: nil, table: 100..<1000000 ~= rawValue ? nil : "Definition")
    }
    
    /// The stable identity of the GICS classification associated with this instance, i.e. the GICS Code.
    @inlinable
    public var id: GICS.Code {
        rawValue
    }
    
    /// A Boolean value indicating whether the instance is a GICS Sector classification.
    @inlinable
    public var isSector: Bool {
        rawValue < 100
    }
    
    /// A Boolean value indicating whether the instance is a GICS Industry Group classification.
    @inlinable
    public var isIndustryGroup: Bool {
        100..<10000 ~= rawValue
    }
    
    /// A Boolean value indicating whether the instance is a GICS Industry classification.
    @inlinable
    public var isIndustry: Bool {
        10000..<1000000 ~= rawValue
    }
    
    /// A Boolean value indicating whether the instance is a GICS Sub-Industry classification.
    @inlinable
    public var isSubIndustry: Bool {
        rawValue > 1000000
    }
    
    /// Returns a Boolean value indicating whether the GICS instance belongs to the given parent classification.
    /// - Parameter parent: The parent GICS classification to compare against the GICS instance.
    /// - Returns: true if the GICS instance belongs to the given parent GICS classification within its hierarchy; otherwise, false.
    @inlinable
    public func belongs(to parent: some GICSRepresentable) -> Bool {
        parent.contains(self)
    }
    
    /// Returns a Boolean value indicating whether the GICS instance contains the given child classification within its hierarchy.
    /// - Parameter child: The child GICS classification to compare against the GICS instance.
    /// - Returns: true if the given GICS classification is a granular classification of the GICS instance; otherwise, false.
    @inlinable
    public func contains(_ child: some GICSRepresentable) -> Bool {
        let parentCode = rawValue
        var childCode = child.rawValue
        while parentCode < childCode {
            childCode /= 100
            if parentCode == childCode {
                return true
            }
        }
        return false
    }
    
    /// The GICS Sector of the given GICS classification.
    @inlinable
    public var sector: GICS.Sector {
        var gicsCode = rawValue
        switch gicsCode {
        case 0..<100:           break
        case 100..<10000:       gicsCode /= 100
        case 10000..<1000000:   gicsCode /= 10000
        default:                gicsCode /= 1000000
        }
        assert(GICS.Sector(rawValue: gicsCode) != nil, "Invalid GICS Sector Code.")
        return GICS.Sector(rawValue: gicsCode)!
    }
    
    /// All GICS Industry Groups of the given GICS classification.
    @inlinable
    public var industryGroups: [GICS.IndustryGroup] {
        var gicsCode = rawValue
        switch gicsCode {
        case 0..<100:
            return GICS.IndustryGroup.allCases.filter { $0.rawValue / 100 == gicsCode }
        case 100..<10000:       break
        case 10000..<1000000:   gicsCode /= 100
        default:                gicsCode /= 10000
        }
        assert(GICS.IndustryGroup(rawValue: gicsCode) != nil, "Invalid GICS Industry Group Code.")
        return [GICS.IndustryGroup(rawValue: gicsCode)!]
    }
    
    /// The GICS Industry Group of the given GICS classification.
    ///
    /// This value is nil if the GICS Industry Group is indeterminate. For example, there could be more than one possible GICS Industry Group for any given GICS Sector.
    @inlinable
    public var industryGroup: GICS.IndustryGroup? {
        var gicsCode = rawValue
        switch gicsCode {
        case 0..<100:
            return GICS.IndustryGroup.allCases.containsOne { $0.rawValue / 100 == gicsCode }
        case 100..<10000:       break
        case 10000..<1000000:   gicsCode /= 100
        default:                gicsCode /= 10000
        }
        return GICS.IndustryGroup(rawValue: gicsCode)
    }
    
    /// All GICS Industries of the given GICS classification.
    @inlinable
    public var industries: [GICS.Industry] {
        var gicsCode = rawValue
        switch gicsCode {
        case 0..<10000:
            let divider: RawValue = gicsCode < 100 ? 10000 : 100
            return GICS.Industry.allCases.filter { $0.rawValue / divider == gicsCode }
        case 10000..<1000000:   break
        default:                gicsCode /= 100
        }
        assert(GICS.Industry(rawValue: gicsCode) != nil, "Invalid GICS Industry Code.")
        return [GICS.Industry(rawValue: gicsCode)!]
    }
    
    /// The GICS Industry of the given GICS classification.
    ///
    /// This value is nil if the GICS Industry is indeterminate. For example, there could be more than one possible GICS Industry for any given GICS Industry Group.
    @inlinable
    public var industry: GICS.Industry? {
        var gicsCode = rawValue
        switch gicsCode {
        case 0..<10000:
            let divider: RawValue = gicsCode < 100 ? 10000 : 100
            return GICS.Industry.allCases.containsOne { $0.rawValue / divider == gicsCode }
        case 10000..<1000000:   break
        default:                gicsCode /= 100
        }
        return GICS.Industry(rawValue: gicsCode)
    }
    
    /// All GICS Sub-Industries of the given GICS classification.
    @inlinable
    public var subIndustries: [GICS.SubIndustry] {
        let divider: RawValue
        let gicsCode = rawValue
        switch gicsCode {
        case 0..<100:           divider = 1000000
        case 100..<10000:       divider = 10000
        case 10000..<1000000:   divider = 100
        default:                divider = 1
        }
        return GICS.SubIndustry.allCases.filter { $0.rawValue / divider == gicsCode }
    }
    
    /// The GICS Sub-Industry of the given GICS classification.
    ///
    /// This value is nil if the GICS Sub-Industry is indeterminate. For example, there could be more than one possible GICS Sub-Industry for any given GICS Industry.
    @inlinable
    public var subIndustry: GICS.SubIndustry? {
        let divider: RawValue
        let gicsCode = rawValue
        switch gicsCode {
        case 0..<100:           divider = 1000000
        case 100..<10000:       divider = 10000
        case 10000..<1000000:   divider = 100
        default:
            return GICS.SubIndustry(rawValue: gicsCode)
        }
        return GICS.SubIndustry.allCases.containsOne { $0.rawValue / divider == gicsCode }
    }
    
}


extension Array where Element: GICSRepresentable {
    
    /// Returns the element if the sequence contains one and only one element that satisfies the given predicate.
    /// - Parameter predicate: A closure that takes an element of the sequence as its argument and returns a Boolean value that indicates whether the passed element represents a match.
    /// - Returns: The element if the sequence contains one and only one element that satisfies `predicate`; otherwise, `nil`.
    ///
    /// - Complexity: O(*n*), where *n* is the length of the sequence.
    @inlinable
    @inline(__always)
    func containsOne(where predicate: (Element) -> Bool) -> Element? {
        var result: Element?
        for e in self where predicate(e) {
            if result != nil {
                // Returns nil if the sequence contains more than one element that satisfies the given predicate.
                return nil
            } else {
                result = e
            }
        }
        return result
    }
    
}
