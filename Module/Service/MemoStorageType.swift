//
//  MemoStorageType.swift
//  Module
//
//  Created by Neal on 2020/2/14.
//  Copyright © 2020 Neal. All rights reserved.
//

import Foundation

import RxSwift

protocol MemoStorageType {
    @discardableResult
    func creatMemo(content: String) -> Observable<Memo>
    
    @discardableResult
    func memoList() -> Observable<[Memo]>
    
    @discardableResult
    func update(memo: Memo, content: String) -> Observable<Memo>
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo>
}
