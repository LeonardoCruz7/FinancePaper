//
//  infoMaterials.swift
//  CofrinhoApp
//
//  Created by Leonardo Cruz on 20/07/26.
//

import Foundation
import SwiftUI


struct infoMaterials : View {
    
    @State var nomeProduto: String =  "NomeDoProduto"
    @State var statusProduto: String = "Baixo"
    @State var valorMercado: Float = 0
    @State var quantidadeMateriais: Int = 0
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack(spacing: 10){
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(.blue)
                        .frame(width: 50, height: 50)
                        .opacity(0.1)
                    
                    Image(systemName: "shippingbox")
                        .foregroundStyle(.blue)
                        .font(.system(size: 20))
                        .bold()
                }
                VStack(alignment: .leading, spacing: 2){
                    Text("PRODUTO")
                        .foregroundStyle(.gray)
                        .bold()
                    
                    Text("Monitor LG UltraWide 34")
                        .foregroundStyle(.black)
                        .bold()
                    
                    
                }
                Text("Baixo")
                    .foregroundStyle(.red)
                    .bold()
                    .padding(8)
                    .background(
                        Capsule()
                            .fill(.red)
                            .opacity(0.1)
                    )
            }
            HStack{
                cardValorUnitário()
                cardQuantEstoque()
            }
        }
        .estiloCardEstoque()
    }
}

@ViewBuilder
func cardValorUnitário() -> some View {
    HStack(spacing: 10){
        VStack(alignment: .leading, spacing: 2){
            Text("Valor unitário")
                .foregroundStyle(.blue)
                .bold()
            
            Text("R$600,00")
                .bold()
                .foregroundStyle(.blue)
        }
        Image(systemName: "chevron.right")
            .foregroundStyle(.blue)
            .bold()
    }
    .estiloMiniCardsEstoque()
}


@ViewBuilder
func cardQuantEstoque() -> some View{
    HStack(spacing: 40){
        VStack(alignment: .leading, spacing: 2){
            Text("Estoque")
                .foregroundStyle(.blue)
                .bold()
            
            Text("6 un")
                .bold()
                .foregroundStyle(.blue)

        }
        Image(systemName: "chevron.right")
            .foregroundStyle(.blue)
            .bold()

    }
    .estiloMiniCardsEstoque()
}


#Preview {
    infoMaterials()
}


