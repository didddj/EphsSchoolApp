//
//  ExitTicketEndView.swift
//  EphsSchoolApp
//
//  Created by Sahasra Kaparthi on 6/19/25.
//
import SwiftUI

struct ExitTicketEndView: View {
    var body: some View {
        VStack(spacing: 20) {
            //logo and icons
            HStack {
                Image("EPLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                
                Spacer()
                
                HStack(spacing: 24) {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 24))
                    
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 28))
                }
                .foregroundColor(.black)
            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            // text
            VStack(spacing: 16) {
                Text("Awesome!")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color(red: 229/255, green: 55/255, blue: 64/255))
                
                Text("You are done with today’s exit ticket for")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Text("Advanced Biology: Human Anatomy and Physiology")
                    .font(.system(size: 18, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                Text("Show this to teacher and get ready to leave")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 30)
            .padding(.top, 20)
            
            // image
            Image("PersonSteps")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300)
                .padding(.top, 30)
                .padding(.bottom, 40)
            
            Spacer(minLength: 10)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    ExitTicketEndView()
}
