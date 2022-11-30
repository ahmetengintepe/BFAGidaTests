//
//  BFAGidaUITest-1.swift
//  BFAGidaUITests
//
//  Created by MacBook on 29.11.2022.
//

import XCTest

final class BFAGidaUITest_4: XCTestCase {

    override func setUpWithError() throws {
      
        continueAfterFailure = false

        
    }

    
    // Senario-4 : İndirimin Bitmesine Son 1 Gün Kalan ürünleri Sipariş verme butonları kontrolü.
    
    func testExample() throws {
        
        let app = XCUIApplication()      // uygulamayı açıyor
        app.launch()
        
        app.buttons["İndirimli Ürünler"].tap()  // İndirimli Ürünler butonuna tıklıyor.
        app.buttons["İndirimin Bitmesine Son 1 Gün"].tap()
        
        let tablesQuery2 = app.tables
        tablesQuery2/*@START_MENU_TOKEN@*/.cells.containing(.staticText, identifier:"Tavuk").element/*[[".cells.containing(.staticText, identifier:\"75₺\").element",".cells.containing(.staticText, identifier:\"Tavuk\").element"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let bfagidaViewNavigationBar = app.navigationBars["BFAGida.View"]
        let backButton = bfagidaViewNavigationBar.buttons["Back"]
        backButton.tap()
        
        let tablesQuery = tablesQuery2
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["200₺"]/*[[".cells.staticTexts[\"200₺\"]",".staticTexts[\"200₺\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["25₺"]/*[[".cells.staticTexts[\"25₺\"]",".staticTexts[\"25₺\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        
    }

    
  /*  func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
   */
    
}
