//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Іван Штурхаль on 04.01.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDissmissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
               AFButton(title: "Learn more")
            })
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com")!))
            })
        }
    }
}
#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
