//
//  BilbaryView.swift
//  iits
//
//  Created by Guillaume Coquard on 13/02/24.
//

import SwiftUI
import OSLog

struct BilbaryView: View {

    @State
    private var view: BViewModel = .shared

    @State
    private var customizer: RCustomizerModel = .shared

    @Environment(\.colorScheme)
    private var colorScheme: ColorScheme

    var body: some View {
        HStack(spacing: 0) {
            LibraryView()
            Divider()
                .padding(0)
                .opacity(view.isLibraryOpen ? 1 : 0)
            ContentView()
        }
        .onChange(of: colorScheme) { _, _ in
            customizer.colorScheme = colorScheme
        }
        .background(Color.userDefinedBackground)
        .foregroundStyle(Color.userDefinedForeground)
        .tint(Color.userDefinedForeground)
        .padding(0)
        .ignoresSafeArea()
        .orientationUpdatesScreen()
        .sheet(isPresented: $view.displayOnboarding) {
            OnboardingView()
        }

    }
}

#Preview {
    BilbaryView()
}
