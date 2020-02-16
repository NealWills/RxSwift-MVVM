//
//  MemoListViewController.swift
//  Module
//
//  Created by Neal on 2020/2/16.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa
import NSObject_Rx

class MemoListViewController: UIViewController {
    
    var viewModel: MemoListViewModel!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var btnAdd: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}

extension MemoListViewController: ViewModelBindableType {
    func bindViewModel() {
        viewModel.title
            .drive(navigationItem.rx.title)
            .disposed(by: rx.disposeBag)
        
        viewModel.memoList
            .bind(to: tableView.rx.items(cellIdentifier: "MemoListTableViewCell")) {
                row, memo, cell in
                cell.textLabel?.text = memo.content
            }
            .disposed(by: rx.disposeBag)
    }
}
