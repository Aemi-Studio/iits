//
//  ViewModel+PopoverType.swift
//  Read
//
//  Created by Guillaume Coquard on 22/02/24.
//

import SwiftUI

extension ViewModel {

    enum PopoverType: Int, CaseIterable {
        case none           = -1
        case library        = 0
        case readingTime    = 1
        case goalStreak     = 2
        case customization  = 3
        case information    = 4
    }

}
