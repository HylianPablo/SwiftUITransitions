//
//  ContentView.swift
//  SwiftUITransitions
//
//  Created by Pablo Martinez Lopez on 13/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var tapped = true
    @Namespace var namespace
    var body: some View {
        ZStack {
            if !tapped {
                VStack(alignment: .leading) {
                    Text("SwiftUI").font(.title.weight(.bold)).padding().matchedGeometryEffect(id: "title", in: namespace)
                    Text("Transitions example app").font(.title2.weight(.medium)).padding().matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum").font(.footnote.weight(.regular)).padding().matchedGeometryEffect(id: "description", in: namespace)
                }
                .frame(width: 300, alignment: .leading)
                .background(Color(.systemPink))
                .cornerRadius(20)
                .shadow(color: Color(.secondaryLabel),
                        radius: 12,
                        x: 0,
                        y: 5)
                .matchedGeometryEffect(id: "card", in: namespace)
            } else {
                VStack(alignment: .leading) {
                    Text("SwiftUI").font(.title.weight(.bold)).padding().matchedGeometryEffect(id: "title", in: namespace)
                    Text("Transitions example app").font(.title2.weight(.medium)).padding().matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum").font(.footnote.weight(.regular)).padding()
                        .matchedGeometryEffect(id: "description", in: namespace)
                    Spacer()
                }
                .frame(width: 350, alignment: .leading)
                .background(Color(.systemPink))
                .cornerRadius(20)
                .shadow(color: Color(.secondaryLabel),
                        radius: 12,
                        x: 0,
                        y: 5)
                .matchedGeometryEffect(id: "card", in: namespace)
            }
        }
        .onTapGesture {
            withAnimation {
                tapped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
