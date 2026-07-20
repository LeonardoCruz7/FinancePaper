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
    
}
