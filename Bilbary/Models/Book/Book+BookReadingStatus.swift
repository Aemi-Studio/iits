//
//  Book+BookReadingStatus.swift
//  Bilbary
//
//  Created by Guillaume Coquard on 02/03/24.
//

import Foundation

extension Book {

    enum BookReadingStatus: Int, CaseIterable {
        case undefined = 0
        case started = 1
        case finished = 2
        case abandonned = 3
    }

}
