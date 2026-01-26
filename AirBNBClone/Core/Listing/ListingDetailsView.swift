//
//  ListingDetailsView.swift
//  AirBNBClone
//
//  Created by Himanshu Namdeo on 25/01/26.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    
    @EnvironmentObject private var exploreRouter: Router<Destinations>
    
    var body: some View {
        ScrollView {
            ListingImageCarousalView()
                .frame(height: 350)
            
            propertyNameLocationRatingsView
            
            Divider()
            
            hostedByInformationView
            
            Divider()
            
            listingFeaturesView
                .padding(.vertical)
            
            Divider()
            
            whereYouWillSleepView
            
            Divider()
            
            whatThisPlaceOffersView
            
            Divider()
            
            mapView
        }
        .ignoresSafeArea()
        .padding(.bottom, 100)
        .overlay(alignment: .bottom) {
            reserveView
        }
    }
}

extension ListingDetailsView {
    
    fileprivate var propertyNameLocationRatingsView: some View {
        VStack(alignment: .leading) {
            Text("Miami Villa")
                .font(.title)
                .fontWeight(.semibold)
            
            VStack(alignment: .leading) {
                HStack {
                    RatingsView(ratings: .constant(4.9))
                    
                    Text("-")
                    
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.bold)
                }
                
                
                Text("Miami, Florida")
            }
            .font(.footnote)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    
    fileprivate var hostedByInformationView: some View {
        HStack {
            VStack(alignment: .leading) {
                Spacer()
                Text("Entire Villa is hosted by")
                    .fontWeight(.semibold)
                Text("John Smith")
                    .fontWeight(.semibold)
                
                Spacer()
                HStack(spacing: 4) {
                    Text("4 Guests")
                    Text("-")
                    Text("4 Bedrooms")
                    Text("-")
                    Text("4 Beds")
                    Text("-")
                    Text("3 Baths")
                }
                .font(.caption2)
                
                Spacer()

            }
            
            Spacer()
            Image("close-up-portrait-young-bearded-man-face")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(.circle)
        }
        .padding()
    }
    
    fileprivate var listingFeaturesView: some View {
        VStack {
            FeatureRowView(icon: .constant("door.left.hand.open"),
                           title: .constant("Self Check-In"),
                           caption: .constant("Checkin yourself with the keypad"))
            
            FeatureRowView(icon: .constant("medal"),
                           title: .constant("Superhost"),
                           caption: .constant("Superhosts are experienced, highly rated hosts who are commited to provide greate service to the guests."))
                .padding(.top)
        }
    }
    
    fileprivate var whereYouWillSleepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Where will you sleep")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1..<5, id: \.self) { num in
                        VStack(alignment: .leading, spacing: 6) {
                            Image(systemName: "bed.double")
                                .fontWeight(.bold)
                            Text("Bedroom \(num)")
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1)
                        }
                    }
                }
            }
        }
        .padding()
    }
    
    fileprivate var whatThisPlaceOffersView: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            Text("What this place offers")
                .font(.headline)
            
            FeatureRowView(icon: .constant("wifi"), title: .constant("Wifi"), caption: .constant(nil))
            FeatureRowView(icon: .constant("shield.pattern.checkered"), title: .constant("Alarm System"), caption: .constant(nil))
            FeatureRowView(icon: .constant("building"), title: .constant("Balcony"), caption: .constant(nil))
            FeatureRowView(icon: .constant("washer"), title: .constant("Laundary"), caption: .constant(nil))
            FeatureRowView(icon: .constant("tv"), title: .constant("TV"), caption: .constant(nil))
        }
        .padding()
    }
    
    fileprivate var mapView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
    
    fileprivate var reserveView: some View {
        VStack {
            
            Divider()
                .padding(.bottom)
            
            
            HStack {
                
                VStack(alignment: .leading) {
                    Text("$500")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Total before texes")
                        .font(.caption2)
                    
                    Text("Oct9 - Oct12")
                        .font(.caption2)
                        .underline()
                        .fontWeight(.semibold)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Reserve")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 140, height: 40)
                        .background(Color(.systemPink))
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                
            }
            .padding()
        }
        .background(.white)
    }
}

#Preview {
    ListingDetailsView()
}
