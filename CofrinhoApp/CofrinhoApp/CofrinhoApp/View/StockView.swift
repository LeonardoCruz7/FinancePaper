//
//  StockView.swift
//  CofrinhoApp
//
//  Created by Leonardo Cruz on 20/07/26.
//

import SwiftUI

struct StockView: View {
    @State var userAgreed : Bool = false
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true){
            VStack(spacing: 20){
                infoMaterials()
                infoMaterials()
                infoMaterials()
                infoMaterials()
            }
        }
        
       
        
    }
}

#Preview {
    StockView()
}
