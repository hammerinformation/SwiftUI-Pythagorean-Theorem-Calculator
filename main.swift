
import PlaygroundSupport
import SwiftUI

// @hammerinformation
struct ViewController :View {
    @State  var  a :String = ""
    @State var b:String = ""
    @State var result:Float = 0.0

    
    var body : some View{
        
        VStack{
            
            TextField("a",text:$a).multilineTextAlignment(.center).background(Color.gray.opacity(0.1)).padding(10).textFieldStyle(RoundedBorderTextFieldStyle()).font(Font.system(size: 30))
            
            
            TextField("b",text:$b).multilineTextAlignment(.center).background(Color.gray.opacity(0.1)).padding(10).textFieldStyle(RoundedBorderTextFieldStyle()).font(Font.system(size: 30))
            
            Button(action:
                    {var _a = Float(a) ?? 0
                        var _b = Float(b) ?? 0
                        if(!a.isEmpty && !b.isEmpty){
                            self.result =  sqrt((_a * _a) + (_b * _b))
                            self.f = String(self.result)
                            
                            
                        }
                        else{
                            self.result = 0
                            
                        }
                        print(result)
                        
                    },label:{Text("Calculate").padding(10).foregroundColor(Color.white)}).background(Color.blue).cornerRadius(8).padding(10)
            
            
            
            
        }
    }
    
    
    }

PlaygroundPage.current.setLiveView(ViewController())

	◦	
