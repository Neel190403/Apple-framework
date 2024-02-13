//
//  AFButton.swift
//  Apple-framework
//
//  Created by Neel Pandya on 12/02/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
