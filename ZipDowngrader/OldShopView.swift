//
//  ShopView.swift
//  ZipDowngrader
//
//  Created by Main on 3/19/25.
//

import SwiftUI

struct OldShopView: View {
    @State private var showPurchaseAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    // Header
                    VStack(alignment: .leading) {
                        Text("Shop")
                            .font(.system(size: 40, weight: .semibold))
                    }
                    .padding(.bottom, -2)
                    // Advertisments
                    VStack {
                        // Main Prompt
                        Rectangle()
                            .frame(maxWidth: .infinity, maxHeight: 140)
                            .foregroundStyle(Color(.secondarySystemBackground))
                            .mask { RoundedRectangle(cornerRadius: 20, style: .continuous) }
                            .overlay {
                                VStack {
                                    Text("BUY CREDITS TODAY!")
                                        .font(.system(size: 28, weight: .bold))
                                    Text("Ever wanted to downgrade an A12+ device? Well now, you can. We have had over **30+ years** of downgrading experience for A12+ devices and have been trusted by millions of users.")
                                        .font(.system(size: 15))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .multilineTextAlignment(.center)
                                }
                                .padding()
                            }
                        // Information
                        VStack {
                            HStack(spacing: -10) {
                                // Users Trusted
                                VStack {
                                    Image(systemName: "person.3.fill")
                                        .frame(width: 50, height: 40)
                                        .font(.system(size: 50))
                                    Text("100,000,000")
                                        .font(.system(size: 23, weight: .semibold))
                                    Text("Users Trusted")
                                        .font(.system(size: 14))
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundStyle(.green)
                                .padding(.vertical, 5)
                                // Devices Downgraded
                                VStack {
                                    Image(systemName: "iphone.gen2.radiowaves.left.and.right")
                                        .frame(width: 50, height: 40)
                                        .font(.system(size: 50))
                                    Text("500,000,000")
                                        .font(.system(size: 23, weight: .semibold))
                                    Text("Devices Downgraded")
                                        .font(.system(size: 14))
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundStyle(.green)
                                .padding(.vertical, 5)
                            }
                            HStack(spacing: -10) {
                                // Users Trusted
                                VStack {
                                    Image(systemName: "externaldrive.fill.badge.icloud")
                                        .frame(width: 50, height: 40)
                                        .font(.system(size: 50))
                                    Text("237")
                                        .font(.system(size: 23, weight: .semibold))
                                    Text("iOS Versions")
                                        .font(.system(size: 14))
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundStyle(.green)
                                .padding(.vertical, 5)
                                // Devices Downgraded
                                VStack {
                                    Image(systemName: "centsign.ring.dashed")
                                        .frame(width: 50, height: 40)
                                        .font(.system(size: 50))
                                    Text("1+ days*")
                                        .font(.system(size: 23, weight: .semibold))
                                    Text("Receive Credits")
                                        .font(.system(size: 14))
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundStyle(.green)
                                .padding(.vertical, 5)
                                
                            }
                        }
                        .padding(.vertical, 20)
                    }
                    .frame(maxWidth: .infinity)
                    // Purchase Button
                    Button(action: {
                        showPurchaseAlert = true
                    }) {
                        HStack(spacing: 8) {
                            Image(systemName: "bitcoinsign.circle.fill")
                            Text("BUY CREDITS NOW")
                        }
                        .frame(maxWidth: .infinity, maxHeight: 50)
                    }
                    .foregroundStyle(.red)
                    .background(Color.red.opacity(0.2))
                    .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }
                    .alert(isPresented: $showPurchaseAlert) {
                        Alert(title: Text("1 Credit Purchased"), message: Text("Ok, you bought the credits, but you're gonna have to wait a bit. I'm having slow internet, and I'm afraid you'll leak this, but I'll make sure to send it to you tonight."), dismissButton: .default(Text("Ok")))
                    }
                    // Advertisements
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 73)
                        .foregroundStyle(.yellow.opacity(0.2))
                        .mask { RoundedRectangle(cornerRadius: 20, style: .continuous) }
                        .overlay(alignment: .leading) {
                            HStack(spacing: 12) {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .font(.system(size: 30))
                                    .foregroundStyle(.yellow)
                                Text("**Warning:** Zipgod is having internet issues. Please expect delays.")
                                    .font(.system(size: 18))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .padding()
                        }
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 73)
                        .foregroundStyle(.yellow.opacity(0.2))
                        .mask { RoundedRectangle(cornerRadius: 20, style: .continuous) }
                        .overlay(alignment: .leading) {
                            HStack(spacing: 12) {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .font(.system(size: 30))
                                    .foregroundStyle(.yellow)
                                Text("**Warning:** Zipgod will send you the credits tonight, for sure.")
                                    .font(.system(size: 18))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .padding()
                        }
                }
                Spacer()
            }
            .padding(.top, 18)
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    OldShopView()
}
