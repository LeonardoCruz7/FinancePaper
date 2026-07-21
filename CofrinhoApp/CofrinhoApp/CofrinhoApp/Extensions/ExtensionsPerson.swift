//
//  TextFieldExtension.swift
//  CofrinhoApp
//
//  Created by Leonardo Cruz on 06/07/26.
//

import Foundation
import SwiftUI

extension View {
    
    
    func estiloPilulaCinza() -> some View {
        self
            .padding()
            .background(
                Capsule()
                    .fill(Color(.systemGray6))
            )
            .padding(.horizontal)
    }
    
    
    
    func estiloEstoqueDefault() -> some View{
        self
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 3)
                    .foregroundStyle(.clear)
                    
            )
    }
    
    
    
    func estiloCardEstoque() -> some View{
        self
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(.white)
                    .glassEffect()
                    
            )
    }
    
    
    
    func estiloMiniCardsEstoque() -> some View{
        self
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(.blue)
                    .glassEffect(.regular, in: .rect)
                    .opacity(0.1)
            )
    }
    
}
