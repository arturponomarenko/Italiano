//
//  TestTextParser.swift
//  ItalianoTests
//
//  Created by Artur Ponomarenko on 11.02.2024.
//

@testable import Italiano
import XCTest

final class TextParserTests: XCTestCase {
    let parser = LanguagePairRawTextParser(firstLanguage: .italian, secondLanguage: .ukrainian)

    func testParserOne() {
        let input = """
io
я
tu
ти
"""
        let actualResult = parser.parse(input)
        let expectedResult: [LanguagePair] = [
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "io"),
                native: LanguageItem(language: .ukrainian, text: "я")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "tu"),
                native: LanguageItem(language: .ukrainian, text: "ти")
            )
        ]
        XCTAssertEqual(actualResult, expectedResult)
    }
    
    func testParserTwo() {
        let input = """
essere
бути
io sono
я є
tu sei
ти є
lui è
він є
lei è
вона є
noi siamo
ми є
voi siete
ви є
loro sono
вони є
"""
        let actualResult = parser.parse(input)
        let expectedResult: [LanguagePair] = [
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "essere"),
                native: LanguageItem(language: .ukrainian, text: "бути")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "io sono"),
                native: LanguageItem(language: .ukrainian, text: "я є")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "tu sei"),
                native: LanguageItem(language: .ukrainian, text: "ти є")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "lui è"),
                native: LanguageItem(language: .ukrainian, text: "він є")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "lei è"),
                native: LanguageItem(language: .ukrainian, text: "вона є")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "noi siamo"),
                native: LanguageItem(language: .ukrainian, text: "ми є")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "voi siete"),
                native: LanguageItem(language: .ukrainian, text: "ви є")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "loro sono"),
                native: LanguageItem(language: .ukrainian, text: "вони є")
            )
            
        ]
        XCTAssertEqual(actualResult, expectedResult)
    }

    func testParserIncompleteString() {
        let input = """
io
я
tu
ти
lui
"""
        let actualResult = parser.parse(input)
        let expectedResult: [LanguagePair] = [
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "io"),
                native: LanguageItem(language: .ukrainian, text: "я")
            ),
            LanguagePair(
                learning: LanguageItem(language: .italian, text: "tu"),
                native: LanguageItem(language: .ukrainian, text: "ти")
            )
        ]
        XCTAssertEqual(actualResult, expectedResult)
    }

}
