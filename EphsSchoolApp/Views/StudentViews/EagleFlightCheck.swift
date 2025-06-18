//
//  EagleFlightCheck.swift
//  EphsSchoolApp
//
//  Created by Sahasra Kaparthi on 6/18/25.
//

import SwiftUI

struct EagleFlightCheck: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Ep picture and the other icons
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

                // title
                Text("Eagle Flight Check")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color(red: 194/255, green: 64/255, blue: 64/255))
                    .padding(.horizontal)

                Text("Maintain your Streaks by Participating Daily")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.black)
                    .padding(.horizontal)

                // which day it is
                HStack(spacing: 10) {
                    dayBox(label: "T", active: true)
                    dayBox(label: "W", active: false)
                    dayBox(label: "Th", active: false)
                    dayBox(label: "F", active: false)
                    dayBox(label: "S", active: false)
                    dayBox(label: "Su", active: false)
                }
                .padding(.horizontal)

                // past and current buttons
                HStack(spacing: 10) {
                    Text("Past Courses")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 16)
                        .background(Color(UIColor.systemGray5))
                        .cornerRadius(10)

                    Text("Current Courses")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 16)
                        .background(Color(red: 194/255, green: 64/255, blue: 64/255))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
                }
                .padding(.horizontal)

                // the course cards
                VStack(spacing: 16) {
                    ForEach(0..<4) { index in
                        CourseCard(period: index == 0 ? "First Hour" : "Second Hour")
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .background(Color.white)
    }

//the streak boxes
    func dayBox(label: String, active: Bool) -> some View {
        VStack(spacing: 6) {
            Text(label)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)

            Image(systemName: "bolt.fill")
                .foregroundColor(active ? .yellow : .gray)
        }
        .frame(width: 45, height: 65)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(active ? Color.green : Color.gray.opacity(0.4), lineWidth: active ? 2 : 1)
        )
    }
}

//the class cards
struct CourseCard: View {
    var period: String

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(period)
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Text("Advanced Biology: Human Anatomy")
                    .fontWeight(.semibold)
                    .foregroundColor(.black)

                Text("Teacher’s Name, Class Room Number")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            // Play Button
            ZStack {
                Circle()
                    .fill(Color(red: 194/255, green: 64/255, blue: 64/255))
                    .frame(width: 40, height: 40)

                Image(systemName: "play.fill")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(red: 194/255, green: 64/255, blue: 64/255), lineWidth: 1)
        )
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 2)
    }
}

#Preview {
    EagleFlightCheck()
}
