//
//  BViewModel+ColumnContentType.swift
//  iits
//
//  Created by Guillaume Coquard on 20/02/24.
//

import SwiftUI

extension BViewModel {
    enum ColumnType: Int, CaseIterable {
        case library = 0
        case content = 1
    }
}
