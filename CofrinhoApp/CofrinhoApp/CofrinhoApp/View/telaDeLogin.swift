//
//  ContentView.swift
//  CofrinhoApp
//
//  Created by Leonardo Cruz on 06/07/26.
//

import SwiftUI


struct MoedaFundo: Identifiable {
    let id = UUID()
    let posicaoX: CGFloat
    let posicaoY: CGFloat
    let tamanho: CGFloat
    let rotacao: Double
}

struct telaDeLogin: View {
    
    @State var usuarioLogin : String
    @State var senhaUsuario : String
    @State var ispressed : Bool = false
    
    @State private var moedas: [MoedaFundo] = []
    
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            
            GeometryReader { geometry in
                ZStack {
                    ForEach(moedas) { moeda in
                        Image("Coin")
                            .resizable()
                        
                            .scaledToFit()
                        
                            .frame(width: moeda.tamanho, height: moeda.tamanho)
                        
                            .rotationEffect(.degrees(moeda.rotacao))
                        
                            .opacity(0.40)
                            .position(x: moeda.posicaoX, y: moeda.posicaoY)
                    }
                }
                .onAppear {
                    if moedas.isEmpty {
                        gerarMoedasAleatorias(na: geometry.size)
                    }
                }
            }
            .ignoresSafeArea()
            
            VStack{
                Image("Cofre")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
                
                Text("Login")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.bottom, 30)
                
                Section{
                    TextField(
                        text: $usuarioLogin,
                        prompt: Text("Usuário").foregroundStyle(.black)
                    ) {
                        Text("...")
                    }
                    .padding()
                    .background(Capsule().fill(Color(.white)))
                    .padding(.horizontal)
                    
                    TextField(
                        text: $senhaUsuario,
                        prompt: Text("Senha").foregroundStyle(.black)
                    ){
                        Text("...")
                    }
                    .padding()
                    .background(Capsule().fill(Color(.white)))
                    .padding(.horizontal)
                }
                
                HStack{
                    Button {
                        //MARK: - Vai verificar no BD se existe esse login
                        
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 130, height: 40)
                                .cornerRadius(16)
                                .foregroundStyle(.green)
                            Text("Login")
                                .foregroundStyle(.white)
                                .font(.system(size: 20))
                                .bold()
                        }
                    }
                    .padding(.top, 30)
                }
                
                Text("""
            Caso não possua cadastro, clique aqui \n e inscreva-se
            """)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color(.systemGray))
                .padding()
                
            }
            .padding(.bottom, 140)
        }
    }
    
    
    
    
    
    private func gerarMoedasAleatorias(na tamanhoTela: CGSize) {
        var novasMoedas: [MoedaFundo] = []
        let quantidadeDeMoedas = 20
        
        for _ in 0..<quantidadeDeMoedas {
            let xAleatorio = CGFloat.random(in: 20...(tamanhoTela.width - 20))
            let yAleatorio = CGFloat.random(in: 40...(tamanhoTela.height - 40))
            
            let tamanhoAleatorio = CGFloat.random(in: 25...55)
            let rotacaoAleatoria = Double.random(in: 0...360)
            
            let moeda = MoedaFundo(posicaoX: xAleatorio, posicaoY: yAleatorio, tamanho: tamanhoAleatorio, rotacao: rotacaoAleatoria)
            novasMoedas.append(moeda)
        }
        
        self.moedas = novasMoedas
    }
}

#Preview {
    telaDeLogin(usuarioLogin: "", senhaUsuario: "")
}
