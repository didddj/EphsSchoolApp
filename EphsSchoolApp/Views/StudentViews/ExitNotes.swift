//
//  ExitNotes.swift
//  EphsSchoolApp
//
//  Created by Sahasra Kaparthi on 6/18/25.
//

import SwiftUI

import SwiftUI

struct ExitNotes: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // EP logo and the other icons
                HStack {
                    Image("EPLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)

                    Spacer()

                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(.black)

                    Image(systemName: "line.3.horizontal")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.leading, 12)
                }
                .padding(.horizontal)

                // class title
                Text("Advanced Biology")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(red: 194/255, green: 64/255, blue: 64/255))
                    .padding(.horizontal)

                Text("Human Anatomy and Physiology")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .padding(.horizontal)

                // teacher Info
                HStack {
                    Image(systemName: "person.crop.circle.fill") // Replace with actual teacher image later
                        .resizable()
                        .frame(width: 50, height: 50)

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Loren Terveen")
                            .fontWeight(.medium)
                            .foregroundColor(.black)

                        Text("Professor")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }

                    Spacer()

                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)

                // past and today tabs
                HStack(spacing: 10) {
                    Text("Past Exit Notes")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 16)
                        .background(Color(UIColor.systemGray5))
                        .cornerRadius(10)

                    Text("Today’s Exit Notes")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 16)
                        .background(Color(red: 194/255, green: 64/255, blue: 64/255))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
                }
                .padding(.horizontal)

                // questions
                VStack(alignment: .leading, spacing: 24) {
                    questionBlock(number: 1, text: "How confident do you feel about what we learned today?")
                    questionBlock(number: 2, text: "How meaningful or applicable was today’ content to your life and future?")
                    questionBlock(number: 3, text: "How engaged did you feel during today’s class?")

                    // open ended question
                    Text("Question 4")
                        .font(.footnote)
                        .foregroundColor(.gray)

                    Text("What’s one question or idea you’d like to revisit next class?")
                        .font(.body)
                        .foregroundColor(.black)

                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color(red: 194/255, green: 64/255, blue: 64/255), lineWidth: 1)
                        .frame(height: 50)
                        .overlay(
                            Text("Type your answer here")
                                .foregroundColor(.gray)
                                .padding(.horizontal),
                            alignment: .leading
                        )
                }
                .padding(.horizontal)

                // enter button
                Button(action: {}) {
                    Text("Submit")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(red: 194/255, green: 64/255, blue: 64/255))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                .padding(.top, 10)
            }
            .padding(.vertical)
        }
        .background(Color.white)
    }

//stars
    func questionBlock(number: Int, text: String) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Question \(number)")
                .font(.footnote)
                .foregroundColor(.gray)

            Text(text)
                .font(.body)
                .foregroundColor(.black)

            HStack(spacing: 8) {
                ForEach(0..<5) { index in
                    Image(systemName: index < 3 ? "star.fill" : "star")
                        .foregroundColor(index < 3 ? .yellow : .gray)
                        .font(.title2)
                }
            }
        }
    }
}


#Preview {
    ExitNotes()
}
