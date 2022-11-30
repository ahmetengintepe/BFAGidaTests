//
//  BFAGidaUITest-1.swift
//  BFAGidaUITests
//
//  Created by MacBook on 29.11.2022.
//

import XCTest

final class BFAGidaUITest_3: XCTestCase {

    override func setUpWithError() throws {
      
        continueAfterFailure = false

        
    }

    
    // Senario-3 : İndirimli ürünler sayfasındaki butonların kontrolü.
    
    func testExample() throws {
        
        let app = XCUIApplication()      // uygulamayı açıyor
        app.launch()
        
        app.buttons["İndirimli Ürünler"].tap()  // İndirimli Ürünler butonuna tıklıyor.
        
        app/*@START_MENU_TOKEN@*/.staticTexts["İndirimin Bitmesine Son 1 Gün"]/*[[".buttons[\"İndirimin Bitmesine Son 1 Gün\"].staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]",".staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["BFAGida.View"].buttons["Back"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Yeni İndirime Giren Ürünler"]/*[[".buttons[\"Yeni İndirime Giren Ürünler\"].staticTexts[\"Yeni İndirime Giren Ürünler\"]",".staticTexts[\"Yeni İndirime Giren Ürünler\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Daha Önce Tercih Ettikleriniz"]/*[[".buttons[\"Daha Önce Tercih Ettikleriniz\"].staticTexts[\"Daha Önce Tercih Ettikleriniz\"]",".staticTexts[\"Daha Önce Tercih Ettikleriniz\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Üyelerimize Özel Haftalık İndirim"]/*[[".buttons[\"Üyelerimize Özel Haftalık İndirim\"].staticTexts[\"Üyelerimize Özel Haftalık İndirim\"]",".staticTexts[\"Üyelerimize Özel Haftalık İndirim\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
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
