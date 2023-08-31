//
//  CalculationTests.swift
//  TipCalculatorTests
//
//  Created by Maliks on 31/08/2023.
//

import XCTest
@testable import TipCalculator

final class CalculationTests: XCTestCase {
    
    func testSuccessfulTipCalculation() {
        
        // Given (Arrange)
        let givenAmount = 100.0
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: givenAmount, with: tipSlider)
        
        // Assert (Assert)
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeEnteredAmountTipCalculation() {
        
        // Given (Arrange)
        let givenAmount = -100.0
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: givenAmount, with: tipSlider)
        
        // Assert (Assert)
        XCTAssertNil(tip)
    }
}
