//
//  BFAGidaUITest-1.swift
//  BFAGidaUITests
//
//  Created by MacBook on 29.11.2022.
//

import XCTest

final class BFAGidaUITest_6: XCTestCase {

    override func setUpWithError() throws {
      
        continueAfterFailure = false

        
    }

    
    // Senario-6 : Eklediğimiz Ürünün Satın alınabilmesinin kontrolü.
    
    func testExample() throws {
        
        let app = XCUIApplication()      // uygulamayı açıyor
        app.launch()
        
        app.buttons["İndirimli Ürünler"].tap()  // İndirimli Ürünler butonuna tıklıyor.

        app.buttons["İndirimin Bitmesine Son 1 Gün"].tap()
        
        app.navigationBars["BFAGida.View"].buttons["Ürün Ekle"].tap()
        app.textFields["Yemek Ad"].tap()
        app.typeText("sarma")
        
        let fiyatTextField = app.textFields["Fiyat"]
        fiyatTextField.tap()
        fiyatTextField.tap()
        app.typeText("150")
        
        let buraya1YazNZTextField = app.textFields["Buraya \"1\" Yazınız"]
        buraya1YazNZTextField.tap()
        buraya1YazNZTextField.tap()
        app.typeText("1")
        
        fiyatTextField.tap()
        app.staticTexts["Ekle"].tap()
        app.navigationBars["Ürün Ekleme Ekranı"].buttons["Back"].tap()
        
        _ = app.navigationBars["Ürün Ekleme Ekranı"]
        
        app.tables.staticTexts["sarma"].tap()
        
        
        
        
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

