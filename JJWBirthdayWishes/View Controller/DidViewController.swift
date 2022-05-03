//
//  DidViewController.swift
//  JJWBirthdayWishes
//
//  Created by 王杰 on 2022/5/3.
//

import UIKit

class DidViewController: UIViewController {
    
    let useImage = [["globe.americas","command.circle"],["brain","book"],["person.fill.checkmark","person.fill.questionmark"],["photo","pencil"],["leaf","heart"]]
    let useString = [["计算机网络","操作系统"],["LeetCode200题完成","学习Swift语言入行iOS开发"],["投递简历并能够筛选通过","积攒面试经验"],["每日拍照记录日后留念","Record What I Did Today"],["一直都能发现身边的美,不辜负","感谢帮助我的人"]]
    
    private let homeFeedTable: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.register(DidTableViewCell.self, forCellReuseIdentifier: DidTableViewCell.identifier)
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "一年清单"
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(homeFeedTable)
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        
    }
    
    // 更新view
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
}
extension DidViewController: UITableViewDelegate, UITableViewDataSource {
    
    // 自定义Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = DidTableViewCell()
        cell.updateWithLeftIcon(leftIcon: useImage[indexPath.section][indexPath.row], leftSting: useString[indexPath.section][indexPath.row])
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 5
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
}
