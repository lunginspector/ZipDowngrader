//
//  ContentView.swift
//  ZipDowngrader
//
//  Created by jailbreak.party on 3/18/25.
//

import SwiftUI

struct OldContentView: View {
    var OSVersion = ["18.3.2", "18.3.1", "18.3", "18.2.1", "18.2", "17.7.2"]
    var systemVersion = UIDevice.current.systemVersion
    var model = UIDevice.current.model
    
    @State private var showBrickAlert = false
    @State private var showTrolledAlert = false
    @State private var terminalText: String = "[*] Fetching assets from https://github.com/lunginspector/Accessible...\n[!] Downloaded assets (3.9 MiB).\n\nSystem Version: \(UIDevice.current.systemName) \(UIDevice.current.systemVersion)\nModel: \(UIDevice.current.name)\n\n[*] Preparing...\n[*] Calling SYNDROME...\n[!] Ready to downgrade!\n\n[*] Welcome to ZipDowngrader, the fastest iOS downgrader on the market!\n[!] This project has been sponsored by @zippgod24. Donate to his BTC wallet today! wallet_address\n[!] You have 0 downgrades remaining. Please check the shop in order to buy credits."
    @State private var selectedOSVersion: String = "18.3.2"
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    // Header & Footer
                    VStack(alignment: .leading) {
                        Text("ZipDowngrader")
                            .font(.system(size: 40, weight: .semibold))
                        Text("A12 - A18 (arm64e)")
                            .font(.system(size: 18, weight: .regular))
                    }
                    // Terminal
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 500)
                        .foregroundStyle(Color(.secondarySystemBackground))
                        .mask { RoundedRectangle(cornerRadius: 24, style: .continuous) }
                        .overlay {
                            Text(terminalText)
                                .font(.system(size: 15, weight: .regular, design: .monospaced))
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                .padding(12)
                        }
                    // Buttons
                    HStack {
                        // Downgrade
                        Button(action: {
                            terminalText = "[*] Downgrading device on \(UIDevice.current.systemName) \(UIDevice.current.systemVersion) to \(UIDevice.current.systemName) \(selectedOSVersion)...\n[*] Generating FalseTicket for target OS version...\n[*] Applying SYNDROME...\n[!] Exploited!\n[!] Asking zipgod_crypto_finder to find all wallets and log in...\n[!] Found 4 wallets, logged into 3...\n[!] Applying Transactions...\n[!] WE OUT HERE! Stole 104.23 BTC.\n[!] You do not have any credits, so you cannot complete this downgrade. Go to the shop to buy some."
                        }) {
                            HStack(spacing: 8) {
                                Image(systemName: "arrowshape.down.fill")
                                Text("Downgrade iOS")
                            }
                            .frame(maxWidth: .infinity, maxHeight: 50)
                        }
                        .foregroundStyle(.blue)
                        .background(Color.blue.opacity(0.2))
                        .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }
                        // Obliterate
                        Button(action: {
                            terminalText = "[!] This obliteraton has been sponsored by @zippgod24. Donate to his BTC wallet today! wallet_address\n[!] Zipgod was generous enough to give you one free brick! Make sure to say thank you by donating BTC to him!\n[*] Applying SYNDROME to weakpointr...\n[*] Exploit complete!\n[!] Asking zipgod_crypto_finder to find all wallets and log in...\n[!] Found 4 wallets, logged into 3...\n[!] Applying Transactions...\n[!] WE OUT HERE! Stole 104.23 BTC.\n[*] Unsealing SSV...\n[!] SSV Unsealed! You will now be bricked."
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                showBrickAlert = true
                            }
                        }) {
                            HStack(spacing: 8) {
                                Image(systemName: "flame.fill")
                                Text("Obilterate")
                            }
                            .frame(maxWidth: .infinity, maxHeight: 50)
                        }
                        .alert(isPresented: $showBrickAlert) {
                            Alert(
                                title: Text("Brick Successful!"),
                                message: Text("Your device has been successfully bricked. Reboot now to apply the changes."),
                                dismissButton: .default(Text("Reboot")) {
                                    showTrolledAlert = true
                                })
                        }
                        .foregroundStyle(.red)
                        .background(Color.red.opacity(0.2))
                        .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }
                    }
                    // Version Picker
                    Button(action: {
                        
                    }) {
                        HStack(spacing: -5) {
                            Image(systemName: "gear")
                            Picker("Please choose a color", selection: $selectedOSVersion) {
                                ForEach(OSVersion, id: \.self) {
                                    Text(UIDevice.current.systemName + " " + $0)
                                }
                            }
                            .accentColor(.primary)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 45)
                    }
                    .foregroundStyle(.primary)
                    .background(Color(.secondarySystemBackground))
                    .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }
                    // Shop
                    Divider()
                    NavigationLink(destination: ShopView()) {
                        HStack(spacing: 8) {
                            Image(systemName: "bag.fill")
                            Text("Shop")
                        }
                        .frame(maxWidth: .infinity, maxHeight: 50)
                    }
                    .foregroundStyle(.orange)
                    .background(Color.orange.opacity(0.2))
                    .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }
                    // Credits
                    HStack {
                        Spacer()
                        Rectangle()
                            .frame(maxWidth: 100, maxHeight: 26)
                            .foregroundStyle(Color(.secondarySystemBackground))
                            .mask { RoundedRectangle(cornerRadius: 24, style: .continuous) }
                            .overlay {
                                Text("0 Credits")
                                    .font(.system(size: 14))
                            }
                        Spacer()
                    }
                }
                .padding(.top, 18)
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
        }
        .alert(isPresented: $showTrolledAlert) {
            Alert(title: Text("You have been trolled!"), message: Text("If you haven't caught on already, none of this is real! Why do you think it was released on April 1st?"), dismissButton: .default(Text("Alright bro")))
        }
    }
}

#Preview {
    OldContentView()
}
