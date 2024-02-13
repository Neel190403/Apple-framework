//
//  FrameworkGridViewModel.swift
//  Apple-framework
//
//  Created by Neel Pandya on 12/02/24.
//

import Foundation
import SwiftUI

//view model from MVVM , whenever there is some chage of state

final  class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet{ isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
