//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Іван Штурхаль on 04.01.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .frame(width: 44, height: 44)
                        .foregroundColor(Color.purple)
                        .imageScale(.large)
                        
                }
            }.padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                
            }, label: {
               AFButton(title: "Learn more")
            })
        }
    }
}
#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
