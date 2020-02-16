//
//  MemoListViewModel.swift
//  Module
//
//  Created by Neal on 2020/2/16.
//  Copyright © 2020 Neal. All rights reserved.
//

import Foundation
import RxSwift

class MemoListViewModel: CommonVoewModel {
    
    var memoList: Observable<[Memo]> {
        return storage.memoList()
    }
    
    
    
    
}

