//
//  ShopView.swift
//  ZipDowngrader
//
//  Created by Main on 3/19/25.
//

import SwiftUI

struct ShopView: View {
    @State private var show5PurchaseAlert = false
    @State private var showDisclaimerAlert = false
    @AppStorage("credits") private var credits: Int = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background Image
                Section {
                    GeometryReader { geometry in
                        Image("gold")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: .infinity)
                            .clipped()
                            .ignoresSafeArea()
                            .onAppear {
                                print("Background image loaded")
                            }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        // Header
                        VStack(alignment: .leading) {
                            Text("Shop")
                                .font(Font.custom("times", size: 34))
                                .fontWeight(.bold)
                        }
                        .foregroundStyle(.yellow)
                        .background()
                        .padding(.bottom, -2)
                        // Achievements
                        Section {
                            VStack {
                                // Main Prompt
                                ZStack {
                                    Rectangle()
                                        .frame(maxWidth: .infinity, maxHeight: 140)
                                        .foregroundStyle(.black.opacity(0.6))
                                        .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
                                    VStack {
                                        Text("BUY CREDITS TODAY!")
                                            .font(Font.custom("papyrus", size: 30))
                                        Text("Ever wanted to downgrade an A12+ device? Well now, you can. We have had over **30+ years** of downgrading experience for A12+ devices and have been trusted by millions of users.")
                                            .font(Font.custom("times", size: 15))
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                    }
                                    .foregroundStyle(.yellow)
                                    .padding(.top, 24)
                                }
                                // Information
                                VStack {
                                    HStack(spacing: -10) {
                                        // Users Trusted
                                        VStack(spacing: -4) {
                                            Image(systemName: "person.3.fill")
                                                .frame(width: 50, height: 40)
                                                .font(.system(size: 50))
                                            Text("100,000,000")
                                                .font(Font.custom("papyrus", size: 23))
                                            Text("Users Trusted")
                                                .font(Font.custom("Times", size: 14))
                                                .fontWeight(.bold)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundStyle(.yellow)
                                        .padding(.vertical, 5)
                                        // Devices Downgraded
                                        VStack(spacing: -4) {
                                            Image(systemName: "iphone.gen2.radiowaves.left.and.right")
                                                .frame(width: 50, height: 40)
                                                .font(.system(size: 50))
                                            Text("500,000,000")
                                                .font(Font.custom("papyrus", size: 23))
                                            Text("Devices Downgraded")
                                                .font(Font.custom("Times", size: 14))
                                                .fontWeight(.bold)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundStyle(.yellow)
                                        .padding(.vertical, 5)
                                    }
                                    HStack(spacing: -10) {
                                        // Users Trusted
                                        VStack(spacing: -4) {
                                            Image(systemName: "externaldrive.fill.badge.icloud")
                                                .frame(width: 50, height: 40)
                                                .font(.system(size: 50))
                                            Text("237")
                                                .font(Font.custom("papyrus", size: 23))
                                            Text("iOS Versions")
                                                .font(Font.custom("Times", size: 14))
                                                .fontWeight(.bold)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundStyle(.yellow)
                                        .padding(.vertical, 5)
                                        // Devices Downgraded
                                        VStack(spacing: -4) {
                                            Image(systemName: "dollarsign.circle.fill")
                                                .frame(width: 50, height: 40)
                                                .font(.system(size: 50))
                                            Text("1+ days*")
                                                .font(Font.custom("papyrus", size: 23))
                                            Text("Receive Credits")
                                                .font(Font.custom("Times", size: 14))
                                                .fontWeight(.bold)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundStyle(.yellow)
                                        .padding(.vertical, 5)
                                        
                                    }
                                }
                                .background(.black.opacity(0.6))
                                .padding(.top, 20)
                            }
                        }
                        .shadow(color: .yellow.opacity(1), radius: 8, x: 0, y: 0)
                        .frame(maxWidth: .infinity)
                        // "Reviews"
                        Section {
                            // 5 Star Service
                            VStack {
                                Text("5 STAR SERVICE")
                                    .font(Font.custom("papyrus", size: 14))
                                HStack {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.yellow)
                            .background(.black.opacity(0.6))
                            // Reviews
                            ScrollView(.horizontal) {
                                HStack {
                                    // Review 1
                                    ScrollView(.vertical) {
                                        VStack {
                                            HStack {
                                                Text("lunginspector")
                                                    .font(Font.custom("times", size: 18))
                                                    .fontWeight(.bold)
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                            }
                                            Text("Downloaded the app and paid for the credits.\nMy iPhone 15 Pro is now on iOS 17.0 thanks to this tool, but I am stuck in September 22nd, 2023, and I can't escape.\nPlease help.")
                                                .font(Font.custom("times", size: 20))
                                                .fixedSize(horizontal: false, vertical: true)
                                                .multilineTextAlignment(.leading)
                                        }
                                        .padding()
                                        .background(.yellow.opacity(0.4))
                                        .frame(width: 300, height: .infinity, alignment: .leading)
                                    }
                                    // Review 2
                                    ScrollView(.vertical) {
                                        VStack {
                                            HStack {
                                                Text("zippgod24")
                                                    .font(Font.custom("times", size: 18))
                                                    .fontWeight(.bold)
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star")
                                            }
                                            Text("I love this app! However, when I tried to buy credits, I was sending BTC through the same wallet I use to receive BTC from other people who buy this app. I wonder why. Minus 1 star.")
                                                .font(Font.custom("times", size: 20))
                                                .fixedSize(horizontal: false, vertical: true)
                                                .multilineTextAlignment(.center)
                                        }
                                        .padding()
                                        .background(.yellow.opacity(0.4))
                                        .frame(width: 300, height: .infinity, alignment: .leading)
                                    }
                                    // BrocoDev
                                    ScrollView(.vertical) {
                                        VStack {
                                            HStack {
                                                Text("BrocoDev")
                                                    .font(Font.custom("times", size: 18))
                                                    .fontWeight(.bold)
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                            }
                                            Text("I downgraded my iPhone 14 Plus to iOS 17.3 beta 1, and it's bootlooping. That means it's working! Also, I love shilling my apps. Download Prism and Flux.")
                                                .font(Font.custom("times", size: 20))
                                                .fixedSize(horizontal: false, vertical: true)
                                                .multilineTextAlignment(.center)
                                        }
                                        .padding()
                                        .background(.yellow.opacity(0.4))
                                        .frame(width: 300, height: .infinity, alignment: .leading)
                                    }
                                    // Skadz
                                    ScrollView(.vertical) {
                                        VStack {
                                            HStack {
                                                Text("Skadz")
                                                    .font(Font.custom("times", size: 18))
                                                    .fontWeight(.bold)
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                            }
                                            Text("I POST DEVICEFARM LEAKED!!! https://www.mediafire.com/file/6bxo9hw1t9b81sk/Devicefarm.zip/file")
                                                .font(Font.custom("times", size: 20))
                                                .fixedSize(horizontal: false, vertical: true)
                                                .multilineTextAlignment(.center)
                                        }
                                        .padding()
                                        .background(.yellow.opacity(0.4))
                                        .frame(width: 300, height: .infinity, alignment: .leading)
                                    }
                                    // pwned20forever
                                    ScrollView(.vertical) {
                                        VStack {
                                            HStack {
                                                Text("pwned20forever")
                                                    .font(Font.custom("times", size: 18))
                                                    .fontWeight(.bold)
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                            }
                                            Text("This app is great! I'm so suprised at the design of this UI, it's absoultely amazing! I'm glad Od1n was able to inspire this project, and I hope more apps follow this trend.")
                                                .font(Font.custom("times", size: 20))
                                                .fixedSize(horizontal: false, vertical: true)
                                                .multilineTextAlignment(.center)
                                        }
                                        .padding()
                                        .background(.yellow.opacity(0.4))
                                        .frame(width: 300, height: .infinity, alignment: .leading)
                                    }
                                }
                            }
                            .frame(maxHeight: .infinity)
                        }
                        
                        // Timer
                        Section {
                            ZStack(alignment: .top) {
                                Rectangle()
                                    .frame(maxWidth: .infinity,  maxHeight: 130)
                                    .foregroundStyle(.red.opacity(0.2))
                                VStack {
                                    Text("Don't Delay!")
                                        .font(Font.custom("times", size: 16))
                                        .fontWeight(.bold)
                                    Text("00:24")
                                        .font(Font.custom("papyrus", size: 50))
                                        .padding(.bottom, -20)
                                    Text("To get 5 credits for only 0.14 BTC!")
                                        .font(Font.custom("times", size: 16))
                                        .fontWeight(.bold)
                                }
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.red)
                                
                            }
                        }
                        .shadow(color: .red.opacity(1), radius: 8, x: 0, y: 0)
                        // Purchase 5 Credits Button
                        Section {
                            Button(action: {
                                show5PurchaseAlert = true
                                credits += 5
                            }) {
                                HStack(spacing: 8) {
                                    Image(systemName: "bitcoinsign.circle.fill")
                                    Text("BUY 5 CREDITS (0.14 BTC)")
                                        .font(Font.custom("times", size: 20))
                                        .fontWeight(.bold)
                                }
                                .frame(maxWidth: .infinity, maxHeight: 50)
                            }
                            .foregroundStyle(.red)
                            .background(Color.red.opacity(0.2))
                            .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
                            .alert(isPresented: $show5PurchaseAlert) {
                                Alert(title: Text("Stole 239.29 BTC!"), message: Text("Ok, you bought the credits, but you're gonna have to wait a bit. I'm having slow internet, and the download keeps failing. But I swear I'll find a way to get it out to you tonight, just trust me."), dismissButton: .default(Text("Alr cool")))
                            }
                        }
                        .shadow(color: .red.opacity(1), radius: 8, x: 0, y: 0)
                        .shadow(color: .red.opacity(1), radius: 8, x: 0, y: 0)
                        Section {
                            Button(action: {
                                showDisclaimerAlert = true
                            }) {
                                HStack(spacing: 8) {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                    Text("Disclaimer")
                                        .font(Font.custom("times", size: 20))
                                        .fontWeight(.bold)
                                }
                                .frame(maxWidth: .infinity, maxHeight: 20)
                            }
                        }
                        .foregroundStyle(.blue)
                        .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
                        .alert(isPresented: $showDisclaimerAlert) {
                            Alert(title: Text("Made with hatred by the jailbreak.party team"), message: Text("This app is a joke. This means you can't downgrade, buy credits, or get scammed by zippgod24 (at least not in this app). Why do you think it was released on April 1st? All jokes aside, we do not condone hate or harrassment towards any invidiuals mentioned in this app. It is meant purely for the laughs."), dismissButton: .default(Text("Bro Ik")))
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
}

#Preview {
    ShopView()
}
