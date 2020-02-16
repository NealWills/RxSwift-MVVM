//
//  TransitionModel.swift
//  Module
//
//  Created by Neal on 2020/2/16.
//  Copyright © 2020 Neal. All rights reserved.
//

import Foundation

enum TransitionStyle {
    case root, push, modal
}

enum TransitionError: Error {
    case navigationControllerMissing, cannotPop, unKnow
}
