//
//  BFAGidaUITest-1.swift
//  BFAGidaUITests
//
//  Created by MacBook on 29.11.2022.
//

import XCTest

final class BFAGidaUITest_7: XCTestCase {

    override func setUpWithError() throws {
      
        continueAfterFailure = false

        
    }

    
    // Senario-7 : Ürünü Silebilme kontrolü.
    
    func testExample() throws {
        
        let app = XCUIApplication()      // uygulamayı açıyor
        app.launch()
        
        app.buttons["İndirimli Ürünler"].tap()// İndirimli Ürünler butonuna tıklıyor.
        
        
        app/*@START_MENU_TOKEN@*/.staticTexts["İndirimli Ürünler"]/*[[".buttons[\"İndirimli Ürünler\"].staticTexts[\"İndirimli Ürünler\"]",".staticTexts[\"İndirimli Ürünler\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["İndirimin Bitmesine Son 1 Gün"]/*[[".buttons[\"İndirimin Bitmesine Son 1 Gün\"].staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]",".staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let bfagidaViewNavigationBar = app.navigationBars["BFAGida.View"]
        bfagidaViewNavigationBar.buttons["Ürün Ekle"].tap()
        
        let rNEklemeEkranNavigationBar = app.navigationBars["Ürün Ekleme Ekranı"]
        rNEklemeEkranNavigationBar.buttons["Ürün Sil"].tap()
        app.textFields["Ürün Adını Giriniz"].tap()
        app.typeText("pirzola")
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
       
        app.navigationBars["Ürün Silme Ekranı"].buttons["Ürün Ekleme Ekranı"].tap()
        rNEklemeEkranNavigationBar.buttons["Back"].tap()
        
        let backButton = bfagidaViewNavigationBar.buttons["Back"]
        backButton.tap()
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
