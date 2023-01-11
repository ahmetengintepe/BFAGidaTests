//
//  BFAGidaUITests.swift
//  BFAGidaUITests
//
//  Created by Furkan Akman on 25.11.2022.
//

import XCTest

final class BFAGidaUITests: XCTestCase {
    
    override func setUpWithError() throws {
        
        continueAfterFailure = false
        
        
    }
    
    // Tüm test senariolarının test edilmesi.
    
    func testExample() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        
        app.buttons["İndirimli Ürünler"].tap()
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
        
        let rNEkleButton = bfagidaViewNavigationBar.buttons["Ürün Ekle"]
        rNEkleButton.tap()
        app.textFields["Yemek Ad"].tap()
        app.typeText("kebap")
        
        let fiyatTextField = app.textFields["Fiyat"]
        fiyatTextField.tap()
        fiyatTextField.tap()
        app.typeText("500")
        
        let buraya1YazNZTextField = app.textFields["Buraya \"1\" Yazınız"]
        buraya1YazNZTextField.tap()
        buraya1YazNZTextField.tap()
        app.typeText("1")
        
        fiyatTextField.tap()
        app.staticTexts["Ekle"].tap()
        
        
        
        let rNEklemeEkranNavigationBar = app.navigationBars["Ürün Ekleme Ekranı"]
        let backButton2 = rNEklemeEkranNavigationBar.buttons["Back"]
        backButton2.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["500₺"]/*[[".cells.staticTexts[\"500₺\"]",".staticTexts[\"500₺\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        backButton.tap()
        
        let app2 = app
        app2/*@START_MENU_TOKEN@*/.staticTexts["Yeni İndirime Giren Ürünler"]/*[[".buttons[\"Yeni İndirime Giren Ürünler\"].staticTexts[\"Yeni İndirime Giren Ürünler\"]",".staticTexts[\"Yeni İndirime Giren Ürünler\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2/*@START_MENU_TOKEN@*/.staticTexts["Daha Önce Tercih Ettikleriniz"]/*[[".buttons[\"Daha Önce Tercih Ettikleriniz\"].staticTexts[\"Daha Önce Tercih Ettikleriniz\"]",".staticTexts[\"Daha Önce Tercih Ettikleriniz\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2/*@START_MENU_TOKEN@*/.staticTexts["Üyelerimize Özel Haftalık İndirim"]/*[[".buttons[\"Üyelerimize Özel Haftalık İndirim\"].staticTexts[\"Üyelerimize Özel Haftalık İndirim\"]",".staticTexts[\"Üyelerimize Özel Haftalık İndirim\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2/*@START_MENU_TOKEN@*/.staticTexts["İndirimli Ürünler"]/*[[".buttons[\"İndirimli Ürünler\"].staticTexts[\"İndirimli Ürünler\"]",".staticTexts[\"İndirimli Ürünler\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let ndirimliRNlerButton = app.buttons["İndirimli Ürünler"]
        ndirimliRNlerButton.tap()
        ndirimliRNlerButton.tap()
        
        bfagidaViewNavigationBar.buttons["Back"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Tercih Ettikleriniz"]/*[[".buttons[\"Tercih Ettikleriniz\"].staticTexts[\"Tercih Ettikleriniz\"]",".staticTexts[\"Tercih Ettikleriniz\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Üyelerimize Özel"]/*[[".buttons[\"Üyelerimize Özel\"].staticTexts[\"Üyelerimize Özel\"]",".staticTexts[\"Üyelerimize Özel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["İndirimli Ürünler"]/*[[".buttons[\"İndirimli Ürünler\"].staticTexts[\"İndirimli Ürünler\"]",".staticTexts[\"İndirimli Ürünler\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["İndirimin Bitmesine Son 1 Gün"]/*[[".buttons[\"İndirimin Bitmesine Son 1 Gün\"].staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]",".staticTexts[\"İndirimin Bitmesine Son 1 Gün\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        bfagidaViewNavigationBar.buttons["Ürün Ekle"].tap()
        app.navigationBars["Ürün Ekleme Ekranı"].buttons["Ürün Sil"].tap()
        
        app.textFields["Ürün Adını Giriniz"].tap()
        app.typeText("pirzola")
        
        app.navigationBars["Ürün Silme Ekranı"].buttons["Ürün Ekleme Ekranı"].tap()
        rNEklemeEkranNavigationBar.buttons["Back"].tap()
        
        backButton.tap()
        backButton.tap()
        
        
        
    }
    
    
    /* func testLaunchPerformance() throws {
     if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
     
     measure(metrics: [XCTApplicationLaunchMetric()]) {
     XCUIApplication().launch()
     }
     }
     }
     
     */
    
}
