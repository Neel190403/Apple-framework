//
//  FrameworkGridView.swift
//  Apple-framework
//
//  Created by Neel Pandya on 12/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
                    ScrollView {
                        LazyVGrid(columns: viewModel.columns) {
                            ForEach(MockData.frameworks) { framework in
                                NavigationLink(value: framework) {
                                    FrameworkTitleView(framework: framework)
                                        .onTapGesture {
                                            viewModel.selectedFramework = framework
                                        }
                                }
                            }
                        }
                    }
                    .navigationTitle("🍎 Frameworks")
                    .sheet(isPresented: $viewModel.isShowingDetailView) {
                        FrameworkDetailView(framework: viewModel.selectedFramework ??                                       MockData.sampleFramework,                                 isShowingDetailView: $viewModel.isShowingDetailView)
                    }
                }
        
        
        ///lazy grids means whatever is required on the screen, only that much part will get rendered
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

