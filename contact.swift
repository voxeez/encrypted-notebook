import Foundation

class Contact {
    
    var saTableCryptage : Dictionary<Character , Character> = ["a":"h", "b":";", "c":"5", "d":")"]
    
    var saTableDecryptage : Dictionary<Character , Character> {
        var laTable : Dictionary<Character, Character> = [:]
        for (clear_char, encrypted_char) in saTableCryptage{
            laTable[encrypted_char]=clear_char
        }
        return laTable
    }
    
    var sonCarnet : Dictionary<String, Array<Character>> = [:]
    var encrypted_carnet : Dictionary<String, Array<Character>> = [:]
    
    func crypter(){
        for (user, password) in encrypted_carnet{
            var encrypted_password : Array<Character> = Array()
            for clear_char in password{
                if saTableCryptage.keys.contains(clear_char) {
                    encrypted_password.append(self.saTableCryptage[clear_char]!)
                }else{
                    encrypted_password.append(clear_char)
                }
            }
            encrypted_carnet[user]=encrypted_password
        }
    }
    
    func ajouteContact(user : String, password : String){
        sonCarnet[user] = Array(password)
    }
    
    func recherchePassword(user : String, carnet : Dictionary<String, Array<Character>>)->String {
        var clear_password : String = ""
        
        if carnet.keys.contains(user) {
            for crypted_char in carnet[user]!{
                if saTableDecryptage.keys.contains(crypted_char) {
                    clear_password += String(saTableDecryptage[crypted_char]!)
                }else{
                    clear_password += String(crypted_char)
                }
            }
        }
        
        return clear_password
    }
}


