//
//  Sector.swift
//  The Global Industry Classification Standard (GICS)
//
//  Copyright © 2024 Joey GM. All rights reserved.
//

extension GICS {
    
    /// The GICS Sector.
    public enum Sector: GICS.Code, GICSRepresentable {
        
        /// The Energy Sector (GICS Code: 10).
        ///
        /// The Energy Sector comprises companies engaged in exploration & production, refining & marketing, and storage & transportation of oil & gas and coal & consumable fuels. It also includes companies that offer oil & gas equipment and services.
        case energy = 10
        /// The Materials Sector (GICS Code: 15).
        ///
        /// The Materials Sector includes companies that manufacture chemicals, construction materials, forest products, glass, paper and related packaging products, and metals, minerals and mining companies, including producers of steel.
        case materials = 15
        /// The Industrials Sector (GICS Code: 20).
        ///
        /// The Industrials Sector includes manufacturers and distributors of capital goods such as aerospace & defense, building products, electrical equipment and machinery and companies that offer construction & engineering services. It also includes providers of commercial & professional services including printing, environmental and facilities services, office services & supplies, security & alarm services, human resource & employment services, research & consulting services. It also includes companies that provide transportation services.
        case industrials = 20
        /// The Consumer Discretionary Sector (GICS Code: 25).
        ///
        /// The Consumer Discretionary Sector encompasses those businesses that tend to be the most sensitive to economic cycles. Its manufacturing segment includes automobiles & components, household durable goods, leisure products and textiles & apparel. The services segment includes hotels, restaurants, and other leisure facilities. It also includes distributors and retailers of consumer discretionary products.
        case consumerDiscretionary = 25
        /// The Consumer Staples Sector (GICS Code: 30).
        ///
        /// The Consumer Staples Sector comprises companies whose businesses are less sensitive to economic cycles. It includes manufacturers and distributors of food, beverages and tobacco and producers of non-durable household goods and personal products. It also includes distributors and retailers of consumer staples products including food & drug retailing companies.
        case consumerStaples = 30
        /// The Health Care Sector (GICS Code: 35).
        ///
        /// The Health Care Sector includes health care providers & services, companies that manufacture and distribute health care equipment & supplies, and health care technology companies. It also includes companies involved in the research, development, production and marketing of pharmaceuticals and biotechnology products.
        case healthCare = 35
        /// The Financials Sector (GICS Code: 40).
        ///
        /// The Financials Sector contains companies engaged in banking, financial services, consumer finance, capital markets and insurance activities. It also includes Financial Exchanges & Data and Mortgage REITs.
        case financials = 40
        /// The Information Technology Sector (GICS Code: 45).
        ///
        /// The Information Technology Sector comprises companies that offer software and information technology services, manufacturers and distributors of technology hardware & equipment such as communications equipment, cellular phones, computers & peripherals, electronic equipment and related instruments, and semiconductors and related equipment & materials.
        case informationTechnology = 45
        /// The Communication Services Sector (GICS Code: 50).
        ///
        /// The Communication Services Sector includes companies that facilitate communication and offer related content and information through various mediums. It includes telecom and media & entertainment companies including producers of interactive gaming products and companies engaged in content and information creation or distribution through proprietary platforms.
        case communicationServices = 50
        /// The Utilities Sector (GICS Code: 55).
        ///
        /// The Utilities Sector comprises utility companies such as electric, gas and water utilities. It also includes independent power producers & energy traders and companies that engage in generation and distribution of electricity using renewable sources.
        case utilities = 55
        /// The Real Estate Sector (GICS Code: 60).
        ///
        /// The Real Estate Sector contains companies engaged in real estate development and operation. It also includes companies offering real estate related services and Equity Real Estate Investment Trusts (REITs).
        case realEstate = 60
        
    }
    
}
