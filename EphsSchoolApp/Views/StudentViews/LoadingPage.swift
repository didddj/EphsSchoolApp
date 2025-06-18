//
//  LoadingPage.swift
//  EphsSchoolApp
//
//  Created by Sahasra Kaparthi on 6/4/25.
//
import SwiftUI

struct LoadingPage: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            VStack(spacing: 0) {
                Image("EPHSlogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)

                Text("For Students")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    LoadingPage()
}
