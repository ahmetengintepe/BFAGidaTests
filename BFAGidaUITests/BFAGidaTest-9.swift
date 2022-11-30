//
//  BFAGidaUITest-1.swift
//  BFAGidaUITests
//
//  Created by MacBook on 29.11.2022.
//

import XCTest

final class BFAGidaUITest_9: XCTestCase {

    override func setUpWithError() throws {
      
        continueAfterFailure = false

        
    }

    
    // Senario-9 : Yemek adı int değer alamaz. Tersten test edildi.
    
    func testExample() throws {
        
        let app = XCUIApplication()      // uygulamayı açıyor
        app.launch()
        
        let bfagidaViewNavigationBar = app.navigationBars["BFAGida.View"]
        
        app/*@START_MENU_TOKEN@*/.staticTexts["İndirimli Ürünler"]/*[[".buttons[\"İndirimli Ürünler\"].staticTexts[\"İndirimli Ürünler\"]",".staticTexts[\"İndirimli Ürünler\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["İndirimin Bitmesine Son 1 Gün"]/*[[".buttons[\"İndirimin Bitmesine Son 1 Gün\"].staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]",".staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        bfagidaViewNavigationBar.buttons["Ürün Ekle"].tap()
        app.textFields["Yemek Ad"].tap()
        app.typeText("123456789109")
            
        
        
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
