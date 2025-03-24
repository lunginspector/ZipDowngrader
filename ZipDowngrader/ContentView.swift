//
//  ContentView.swift
//  ZipDowngrader
//
//  Created by jailbreak.party on 3/18/25.
//

import SwiftUI

struct ContentView: View {
    var OSVersion = ["18.3.2", "18.3.1", "18.3", "18.2.1", "18.2", "17.7.2"]
    var systemVersion = UIDevice.current.systemVersion
    var model = UIDevice.current.model
    
    @State private var showBrickAlert = false
    @State private var showTrolledAlert = false
    @State private var terminalText: String = "[*] Fetching assets from https://github.com/lunginspector/Accessible...\n[!] Downloaded assets (3.9 MiB).\n\nSystem Version: \(UIDevice.current.systemName) \(UIDevice.current.systemVersion)\nModel: \(UIDevice.current.name)\n\n[*] Preparing...\n[*] Calling SYNDROME...\n[!] Ready to downgrade!\n\n[*] Welcome to ZipDowngrader, the fastest iOS downgrader on the market!\n[!] This project has been sponsored by @zippgod24. Donate to his BTC wallet today! wallet_address\n[!] You have 0 downgrades remaining. Please check the shop in order to buy credits."
    @State private var selectedOSVersion: String = "18.3.2"
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background Image
                Section {
                    GeometryReader { geometry in
                        Image("hacker")
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
                        // Header & Footer
                        Section {
                            VStack(alignment: .leading) {
                                Text("ZipDowngrader")
                                    .font(Font.custom("times", size: 34))
                                    .fontWeight(.bold)
                                Text("A12 - A18 (arm64e)")
                                    .font(Font.custom("times", size: 18))
                                    .fontWeight(.bold)
                            }
                            .shadow(color: .green.opacity(1), radius: 14, x: 0, y: 0)
                            .foregroundStyle(.green)
                            ZStack {
                                Rectangle()
                                    .frame(maxHeight: 40)
                                    .foregroundStyle(.red)
                                VStack {
                                    HStack {
                                        Image(systemName: "exclamationmark.triangle.fill")
                                        Text("0 Credits | Buy Some Now!")
                                    }
                                    .font(Font.custom("papyrus", size: 16))
                                }
                            }
                            .shadow(color: .red.opacity(1), radius: 14, x: 0, y: 0)
                        }
                        // Terminal
                        Section {
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .stroke(.green, lineWidth: 10)
                                    .background(Rectangle().fill(.black.opacity(0.6)))
                                    .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
                                    .frame(maxHeight: 500)
                                Text(terminalText)
                                    .font(Font.custom("papyrus", size: 14))
                                    .foregroundStyle(.green)
                                    .padding()
                            }
                            .shadow(color: .green.opacity(1), radius: 8, x: 0, y: 0)
                        }
                        // Buttons
                        Section {
                            HStack {
                                // Downgrade
                                Button(action: {
                                    terminalText = "[*] Downgrading device on \(UIDevice.current.systemName) \(UIDevice.current.systemVersion) to \(UIDevice.current.systemName) \(selectedOSVersion)...\n[*] Generating FalseTicket for target OS version...\n[*] Applying SYNDROME...\n[!] Exploited!\n[!] Asking zipgod_crypto_finder to find all wallets and log in...\n[!] Found 4 wallets, logged into 3...\n[!] Applying Transactions...\n[!] WE OUT HERE! Stole 104.23 BTC.\n[!] You do not have any credits, so you cannot complete this downgrade. Go to the shop to buy some."
                                }) {
                                    HStack(spacing: 8) {
                                        Image(systemName: "arrowshape.down.fill")
                                        Text("Downgrade iOS")
                                            .font(Font.custom("times", size: 20))
                                            .fontWeight(.bold)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 40)
                                }
                                .foregroundStyle(.orange)
                                .background(Color.orange.opacity(0.6))
                                .mask { RoundedRectangle(cornerRadius: 50, style: .continuous) }
                                // Obliterate
                                Button(action: {
                                    terminalText = "[!] This obliteraton has been sponsored by @zippgod24. Donate to his BTC wallet today! wallet_address\n[!] Zipgod was generous enough to give you one free brick! Make sure to say thank you by donating BTC to him!\n[*] Applying SYNDROME to weakpointr...\n[*] Exploit complete!\n[!] Asking zipgod_crypto_finder to find all wallets and log in...\n[!] Found 4 wallets, logged into 3...\n[!] Applying Transactions...\n[!] WE OUT HERE! Stole 104.23 BTC.\n[*] Unsealing SSV...\n[!] SSV Unsealed! You will now be bricked."
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                        showBrickAlert = true
                                    }
                                }) {
                                    HStack(spacing: 12) {
                                        Image(systemName: "flame.fill")
                                        Text("Obilterate")
                                            .font(Font.custom("times", size: 20))
                                            .fontWeight(.bold)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 40)
                                }
                                .alert(isPresented: $showBrickAlert) {
                                    Alert(
                                        title: Text("Brick Successful!"),
                                        message: Text("Your device has been successfully bricked. Reboot now to apply the changes."),
                                        dismissButton: .default(Text("Reboot")) {
                                            showTrolledAlert = true
                                        })
                                }
                                .foregroundStyle(.orange)
                                .background(Color.orange.opacity(0.6))
                                .mask { RoundedRectangle(cornerRadius: 50, style: .continuous) }
                            }
                            .shadow(color: .orange.opacity(0.8), radius: 14, x: 0, y: 0)
                            // Version Picker
                            Section {
                                Button(action: {
                                    
                                }) {
                                    HStack(spacing: 10) {
                                        Image(systemName: "gear")
                                        Picker("Please choose a color", selection: $selectedOSVersion) {
                                            ForEach(OSVersion, id: \.self) {
                                                Text(UIDevice.current.systemName + " " + $0)
                                            }
                                        }
                                        .accentColor(.green)
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: 30)
                                }
                                .foregroundStyle(.green)
                                .background(Color(.green.opacity(0.5)))
                                .mask { RoundedRectangle(cornerRadius: 0, style: .continuous) }
                            }
                            .shadow(color: .green.opacity(0.8), radius: 8, x: 0, y: 0)
                        }
                        // Shop
                        Section {
                            Text("5 CREDITS for 0.12 BTC | 00:24 LEFT FOR OFFER")
                                .font(Font.custom("times", size: 16))
                                .fontWeight(.bold)
                                .foregroundStyle(.red)
                            NavigationLink(destination: ShopView()) {
                                VStack {
                                    HStack(spacing: 8) {
                                        Image(systemName: "bag.fill")
                                        Text("Shop")
                                            .font(Font.custom("times", size: 25))
                                    }
                                }
                                .frame(maxWidth: .infinity, maxHeight: 60)
                            }
                            .foregroundStyle(.red)
                            .background(Color.red.opacity(0.6))
                            .mask { RoundedRectangle(cornerRadius: 50, style: .continuous) }
                        }
                        .shadow(color: .red.opacity(1), radius: 8, x: 0, y: 0)
                    }
                    .padding(.top, 18)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
            }
        }
        .alert(isPresented: $showTrolledAlert) {
            Alert(title: Text("You have been trolled!"), message: Text("If you haven't caught on already, none of this is real! Why do you think it was released on April 1st?"), dismissButton: .default(Text("Alright bro")))
        }
    }
}

#Preview {
    ContentView()
}


