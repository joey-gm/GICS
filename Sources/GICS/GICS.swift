//
//  GICS.swift
//  The Global Industry Classification Standard (GICS)
//
//  Copyright © 2024 Joey GM. All rights reserved.
//

/**
 A type that represents the Global Industry Classification Standard (GICS).
 
 [The Global Industry Classification Standard](https://www.msci.com/our-solutions/indexes/gics) (GICS) is an industry analysis framework that helps investors understand the key business activities for companies around the world. MSCI and S&P Dow Jones Indices developed this classification standard to provide investors with consistent and exhaustive industry definitions.
 - GICS is a four-tiered, hierarchical industry classification system. The four tiers are: Sectors (``Sector``), Industry Groups (``IndustryGroup``), Industries (``Industry``) and Sub-Industries (``SubIndustry``).
 - All definitions are standardized and applied to companies globally.
 - Each company is assigned a single GICS classification in each of the four tiers, according to its principal business activity.
 - Revenues is a key factor in determining a firm’s principal business activity.
 - Earnings and market perception, however, are also recognized as important and relevant information for classification purposes, and are taken into account during the annual review process.
 - GICS is reviewed annually to ensure it remains fully representative of global market dynamics.
 
 Companies are classified quantitatively and qualitatively. Each company is assigned a single GICS classification at the sub-industry level according to its principal business activity. MSCI and S&P Dow Jones Indices use revenues as a key factor in determining a firm’s principal business activity. Earnings and market, however, are also recognized as important and relevant information for classification purposes.
 
 ![GICS Infographic](https://www.msci.com/documents/1296102/38146359/GICS-infographic-final.svg)
 
 References:
 - [GICS Overview](https://www.msci.com/documents/1296102/11185224/MSCI_GCIS-cfs-fin.pdf)
 - GICS Guiding Principles and Methodology by [MSCI](https://www.msci.com/index/methodology/latest/GICS) and [S&P Global](https://www.spglobal.com/spdji/en/documents/methodologies/methodology-gics.pdf)
 
 - Remark: Based on the GICS structure effective March 2023.
 */
public enum GICS: GICSRepresentable {
    
    /// The GICS numeric code.
    ///
    /// The complete GICS classification for each company is an 8-digit code with text description. The hierarchical design of the 8-digit coding system allows for easy transition between GICS tiers:
    /// - GICS Sector: The first 2 digits
    /// - GICS Industry Group: The first 4 digits
    /// - GICS Industry: The first 6 digits
    /// - GICS Sub-Industry: The complete 8 digits
    ///
    /// - Remark: The ``Code`` is a type alias of a 32-bit unsigned integer.
    public typealias Code = UInt32
    
    /// The raw type, i.e. the GICS Code, that can be used to represent all values of the GICS classification.
    ///
    /// Every distinct GICS classification has a corresponding unique GICS Code.
    public typealias RawValue = GICS.Code
    
    /// The case for GICS Sector classification.
    case sector(GICS.Sector)
    /// The case for GICS Industry Group classification.
    case industryGroup(GICS.IndustryGroup)
    /// The case for GICS Industry classification.
    case industry(GICS.Industry)
    /// The case for GICS Sub-Industry classification.
    case subIndustry(GICS.SubIndustry)
    
    /// Creates a new instance of the GICS classification with the specified GICS Code.
    ///
    /// If there is no GICS classification that corresponds with the specified GICS Code, this initializer returns `nil`.
    ///
    /// - Parameter rawValue: The GICS Code for the new GICS classification instance.
    @inlinable
    public init?(rawValue: GICS.Code) {
        switch rawValue {
        case 0..<100:
            guard let sector = GICS.Sector(rawValue: rawValue) else { return nil }
            self = .sector(sector)
        case 100..<10000:
            guard let industryGroup = GICS.IndustryGroup(rawValue: rawValue) else { return nil }
            self = .industryGroup(industryGroup)
        case 10000..<1000000:
            guard let industry = GICS.Industry(rawValue: rawValue) else { return nil }
            self = .industry(industry)
        default:
            guard let subIndustry = GICS.SubIndustry(rawValue: rawValue) else { return nil }
            self = .subIndustry(subIndustry)
        }
    }
    
    /// The GICS Code of the given GICS classification.
    @inlinable
    public var rawValue: GICS.Code {
        switch self {
        case .sector(let sector): sector.rawValue
        case .industryGroup(let industryGroup): industryGroup.rawValue
        case .industry(let industry): industry.rawValue
        case .subIndustry(let subIndustry): subIndustry.rawValue
        }
    }
    
    /// A collection of all GICS classifications, including GICS Sectors, GICS Industry Groups, GICS Industries, and GICS Sub-Industries.
    @inlinable
    public static var allCases: [GICS] {
        var allCases = [GICS]()
        allCases.reserveCapacity(273)
        allSectors.forEach { allCases.append(GICS.sector($0)) }
        allIndustryGroups.forEach { allCases.append(GICS.industryGroup($0)) }
        allIndustries.forEach { allCases.append(GICS.industry($0)) }
        allSubIndustries.forEach { allCases.append(GICS.subIndustry($0)) }
        assert(allCases.endIndex == 273, "Array's capacity is under-reserved.")
        return allCases
    }
    
    /// A collection of all GICS Sectors.
    @inlinable
    public static var allSectors: [GICS.Sector] {
        GICS.Sector.allCases
    }
    
    /// A collection of all GICS Industry Groups.
    @inlinable
    public static var allIndustryGroups: [GICS.IndustryGroup] {
        GICS.IndustryGroup.allCases
    }
    
    /// A collection of all GICS Industries.
    @inlinable
    public static var allIndustries: [GICS.Industry] {
        GICS.Industry.allCases
    }
    
    /// A collection of all GICS Sub-Industries.
    @inlinable
    public static var allSubIndustries: [GICS.SubIndustry] {
        GICS.SubIndustry.allCases
    }
    
}
