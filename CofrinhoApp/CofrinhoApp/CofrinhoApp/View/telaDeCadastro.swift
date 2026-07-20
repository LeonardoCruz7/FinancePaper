//
//  telaDeCadastro.swift
//  CofrinhoApp
//
//  Created by Leonardo Cruz on 06/07/26.
//

import Foundation
import SwiftUI


struct telaDeCadastro : View {
    
    @State var nomeUsuário : String
    @State var sobrenomeUsuário : String
    @State var nickName : String
    @State var senha : String
    @State var senhaConfirm : String
    
    
    var body: some View {
        VStack{
            
            Text("Cadastro")
                .bold()
                .font(.system(size: 30))
                .padding(.trailing,250)
                .padding(.leading)
            
            Section{
        
                TextField("username.cadaster", text: $nomeUsuário,prompt: Text("Nome"))
                .estiloPilulaCinza()
                
                TextField("lastname.cadaster", text: $sobrenomeUsuário,prompt: Text("Sobrenome"))
                .estiloPilulaCinza()
                
                TextField("nickname.cadaster", text: $nickName, prompt: Text("Nome de usuário"))
                .estiloPilulaCinza()
                
                TextField("key.cadaster", text: $senha, prompt: Text("Senha"))
                .estiloPilulaCinza()
                
                TextField("confirmkey.cadaster", text: $senhaConfirm, prompt: Text("Confirmar senha"))
                .estiloPilulaCinza()
                
            }
            
            Button {
                //MARK: - Cadastro realizado
            } label: {
                ZStack{
                    Rectangle()
                        .cornerRadius(16)
                        .frame(width: 100, height: 30)
                    Text("Confirmar")
                        .foregroundStyle(.white)
                        .bold()
                }
            }
            .padding(.top,10)

        }
    }
}

#Preview {
    telaDeCadastro(nomeUsuário: "", sobrenomeUsuário: "", nickName: "", senha: "", senhaConfirm: "")
}
