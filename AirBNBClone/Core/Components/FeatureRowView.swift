//
//  FeatureRowView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 26/01/26.
//

import SwiftUI

struct FeatureRowView: View {
    
    @Binding var icon: String
    @Binding var title: String
    @Binding var caption: String?
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title2)
                .fontWeight(.bold)
            
    
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                if let caption = caption {
                    Text(caption)
                        .font(.footnote)
                        .foregroundStyle(Color(.systemGray))
                }
            }
            .padding(.leading)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    FeatureRowView(icon: .constant("door.left.hand.open"), title: .constant("Self Check-In"), caption: .constant("Checkin yourself with the keypad"))
}
