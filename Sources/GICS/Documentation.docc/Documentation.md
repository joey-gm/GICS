# ``GICS``

A Swift library to parse and retrieve relevant information about the Global Industry Classification Standard (GICS).

## Overview

Welcome to the GICS Swift library! This library implements the Global Industry Classification Standard (GICS), providing users with the ability to parse GICS codes and retrieve relevant information about GICS classifications.

## GICS
The Global Industry Classification Standard is an industry analysis framework that helps investors understand the key business activities for companies around the world. MSCI and S&P Dow Jones Indices developed this classification standard to provide investors with consistent and exhaustive industry definitions.
- GICS is a four-tiered, hierarchical industry classification system. The four tiers are: Sectors, Industry Groups, Industries and Sub-Industries.
- All definitions are standardized and applied to companies globally.
- Each company is assigned a single GICS classification in each of the four tiers, according to its principal business activity.
- Revenues is a key factor in determining a firm’s principal business activity.
- Earnings and market perception, however, are also recognized as important and relevant information for classification purposes, and are taken into account during the annual review process.

![GICS Infographic](https://www.msci.com/documents/1296102/38146359/GICS-infographic-final.svg)

## Framework Design
The hierarchical design of the 8-digit GICS coding system allows for easy transition between GICS tiers. The ``GICSRepresentable`` protocol defines methods and properties for retrieving GICS classification information, with default implementations based on the GICS structure. The key requirement of `GICSRepresentable` is a `rawValue` that corresponds to the specific GICS code.

The ``GICS`` is an enumeration that conforms to the `GICSRepresentable` protocol, representing all four GICS tiers with an associated value corresponds to the GICS classification. The four GICS tiers are defined as enumerations, namely ``GICS/Sector``, ``GICS/IndustryGroup``, ``GICS/Industry``, and ``GICS/SubIndustry``. Each enumeration case corresponds to a GICS classification within its respective tier.

## References
- [GICS Overview](https://www.msci.com/documents/1296102/11185224/MSCI_GCIS-cfs-fin.pdf)
- GICS Guiding Principles and Methodology by [MSCI](https://www.msci.com/index/methodology/latest/GICS) and [S&P Global](https://www.spglobal.com/spdji/en/documents/methodologies/methodology-gics.pdf)

## Topics

### GICS Classifications
- ``GICS``
- ``GICS/Sector``
- ``GICS/IndustryGroup``
- ``GICS/Industry``
- ``GICS/SubIndustry``
