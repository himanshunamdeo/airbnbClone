//
//  SearchFilterBarView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 16/01/26.
//

import SwiftUI

struct SearchFilterBarView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Miami")
                    .fontWeight(.bold)
                Text("Any week - Add Guest")
                    .font(.footnote)
                    .foregroundStyle(Color.gray)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "gear")
                    .font(.title2)
                    .foregroundStyle(Color.black)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchFilterBarView()
}
