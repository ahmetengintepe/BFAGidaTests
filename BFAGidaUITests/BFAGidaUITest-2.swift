//
//  BFAGidaUITest-1.swift
//  BFAGidaUITests
//
//  Created by MacBook on 29.11.2022.
//

import XCTest

final class BFAGidaUITest_2: XCTestCase {

    override func setUpWithError() throws {
      
        continueAfterFailure = false

        
    }

    
    // Senario-2 : Ana ekran tüm butonların kontrolleri.
    
    func testExample() throws {
        
        let app = XCUIApplication()      // uygulamayı açıyor
        app.launch()
        
        app.buttons["Üyelerimize Özel"].tap() // Üyelerimize Özel butonuna tıklıyor.
        
        app.buttons["Tercih Ettikleriniz"].tap() // Tercih Ettikleriniz butonuna tıklıyor.

        app.buttons["İndirimli Ürünler"].tap()  // İndirimli Ürünler butonuna tıklıyor.

        
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
