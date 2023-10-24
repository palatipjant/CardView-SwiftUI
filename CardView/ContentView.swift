//
//  ContentView.swift
//  CardView
//
//  Created by Palatip Jantawong on 22/10/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            // Mark: Image size adjust
            Image(Works.works_sample.image)
                .resizable()
                .frame(width: 317, height: 257)
            // Mark: Image Shadow
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: Color(.label).opacity(0.2), radius: 10)
                .padding(.bottom)
            // Mark: Text
            VStack(alignment: .trailing) {
                Text(Works.works_sample.category)
                    .font(.headline)
                    .foregroundColor(.gray)
                    .frame(width: 310, alignment: .leading)
                Text(Works.works_sample.heading)
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                    .frame(width: 310, alignment: .leading)
                Text(Works.works_sample.author.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .frame(width: 310, alignment: .leading)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct Work: Hashable, Identifiable{
    let id = UUID()
    let image: String
    let category: String
    let heading: String
    let author: String
    let url: String
    
}
struct Works {
    static let works_sample = Work(image: "portfolio-app", category: "Mobile", heading: "Portfolio iOS App", author: "Palatip Jantawong", url: "https://github.com/palatipjant/Portfolio-iOSApp")
}
