//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Andy Rodriguez on 3/20/25.
//

import SwiftUI

struct ContentView: View {
    
    let gradient = Gradient(colors: [Color("lightBlue"), Color("darkBlue")])
    @State private var hasStarted = false
    
    var backgroundColor = Color(red: 0, green: 122, blue: 51, opacity: 0.25)
    //var darkBlue = Color (red: 3, green: 55, blue: 179)
    //var lightBlue = Color (red: 107, green: 169, blue: 239)
    
    
    var body: some View {
        ZStack{
            backgroundColor
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
                .frame(width: 2000, height: hasStarted ? 550 : 1000)
                .rotationEffect(.degrees(hasStarted ? -45 : 0))
                .offset(y: hasStarted ? 310 : 0)
            
            
            VStack(spacing: 20){
                Text("Xpense")
                    .foregroundStyle(hasStarted ? Color.black: Color.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: hasStarted ? -100 : 0, y: hasStarted ? -250 : 0)
                    
            }
            
        }
            .ignoresSafeArea()
            .onAppear { //TODO: Make it so this changes one second after finished loading
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation(.spring(response: 0.9, dampingFraction: 0.9, blendDuration: 0)){
                        hasStarted.toggle()
                        }
                }
            
        }
    }
}

#Preview {
    ContentView()
}
