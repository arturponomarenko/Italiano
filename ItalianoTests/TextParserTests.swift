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

    func testParser() {
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
