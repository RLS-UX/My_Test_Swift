//
//  Created by Seillier Remy on 29/01/2021.
//

import SwiftUI

struct EXO_EXTRACT_VIEW: View {
    @State private var screenColor: Color = .white
    @State private var imgTxtRt: String = "sun.max.fill"
    var body: some View {
        
            
    ZStack  {
        screenColor.ignoresSafeArea().opacity(0.7)
        .animation(.easeInOut(duration: 0.7))
        
    VStack  {
        GeometryReader { geo in
            Image(systemName: imgTxtRt)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.white)
            .padding()
                .animation(.easeInOut(duration: 0.3))
                    }
           

   
    HStack {
        viewButton(buttonClr:.red, imgTxt:"tortoise.fill", screenColor: $screenColor, imgTxtRt:$imgTxtRt)
        viewButton(buttonClr:.blue, imgTxt:"speaker.zzz.fill",screenColor: $screenColor, imgTxtRt:$imgTxtRt)
        viewButton(buttonClr:.green, imgTxt:"hare.fill",screenColor: $screenColor, imgTxtRt:$imgTxtRt)
        viewButton(buttonClr:.yellow, imgTxt:"speaker.wave.3.fill",screenColor: $screenColor, imgTxtRt:$imgTxtRt)
                }
                            
            }
            }
                }
}
struct viewButton: View {
    var buttonClr: Color
    var imgTxt: String
    @Binding var screenColor: Color
    @Binding var imgTxtRt: String
    
    var body: some View {
    Button(action: {
        screenColor = buttonClr
        imgTxtRt = imgTxt
        }, label: {
            HStack  {
            GeometryReader { geo in
            Image(systemName: imgTxt)
                .frame(width: geo.size.width / 1.6, height:  geo.size.height / 17.5)
                .background(buttonClr)
                .cornerRadius(20)
                .shadow(color: buttonClr, radius: 10, x: 1, y: 1)
                .foregroundColor(Color.white)
                .padding()
                        }.animation(.interpolatingSpring(stiffness: 75, damping: 4))
                }
                }
        )
                    }
struct EXO_EXTRACT_VIEW_Previews: PreviewProvider   {
    static var previews: some View {
        EXO_EXTRACT_VIEW()
                            }
                                        }
}
