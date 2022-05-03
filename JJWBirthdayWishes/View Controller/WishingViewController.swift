//
//  WishingViewController.swift
//  JJWBirthdayWishes
//
//  Created by 王杰 on 2022/5/3.
//

import UIKit

class WishingViewController: UIViewController {
    
    let useImage = [["heart","heart"],["heart","book"],["heart","heart"],["heart.fill","heart.fill"],["heart.fill","heart"]]
    let useString = [["家人身体健康","身边人都能好运"],["室友们都能够找到好去处","每日坚持跑步、锻炼、学习、记录"],["拎得清自己","找到与自身匹配的工作"],["身体恢复健康","调整作息,摆脱神经性耳鸣"],["遇到伴侣","等待意外好柿发生"]]
    
    private let homeFeedTable: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.register(DidTableViewCell.self, forCellReuseIdentifier: DidTableViewCell.identifier)
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "祝愿"
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
extension WishingViewController: UITableViewDelegate, UITableViewDataSource {
    
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
