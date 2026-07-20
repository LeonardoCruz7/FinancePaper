import Foundation
import CloudKit

@Observable
class CofrinhoViewModel {
    
    var usuarioLogin: String = ""
    var senhaUsuario: String = ""
    
    var statusAutenticacao: String = ""
    var estaLogado: Bool = false
    
 
    @MainActor
    func realizarLoginTradicional() async {
        
        guard !usuarioLogin.isEmpty && !senhaUsuario.isEmpty else {
            self.statusAutenticacao = "Preencha todos os campos."
            return
        }
        
        let bancoPublico = CKContainer.default().publicCloudDatabase
        let filtro = NSPredicate(format: "nomeUsuário == %@ AND senhaHash == %@", usuarioLogin, senhaUsuario)
        let query = CKQuery(recordType: "Usuário", predicate: filtro)
        
        do {
            let (resultados, _) = try await bancoPublico.records(matching: query)
            if !resultados.isEmpty {
                self.statusAutenticacao = "Login realizado com sucesso!"
                self.estaLogado = true
            } else {
                self.statusAutenticacao = "Usuário ou senha incorretos."
                self.estaLogado = false
            }
        } catch {
            self.statusAutenticacao = "Erro ao conectar ao banco: \(error.localizedDescription)"
        }
        
    }
}
