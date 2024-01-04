//
//  XDissmissButton.swift
//  Apple-Frameworks
//
//  Created by Іван Штурхаль on 04.01.2024.
//

import SwiftUI

struct XDissmissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 44, height: 44)
                    .foregroundColor(Color.purple)
                    .imageScale(.large)
                    
            }
        }.padding()    }
}

#Preview {
    XDissmissButton(isShowingDetailView: .constant(false))
}
