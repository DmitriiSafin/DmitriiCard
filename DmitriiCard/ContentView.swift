//
//  ContentView.swift
//  DmitriiCard
//
//  Created by Дмитрий on 17.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea(.all)
            VStack {
                Image("Dmitrii")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    }
                Text("Dmitrii Safin")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "8-937-15-16-203", imageName: "phone.fill")
                InfoView(text: "safin-dm@yandex.ru", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


