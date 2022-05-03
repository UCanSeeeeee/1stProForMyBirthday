//
//  DidTableViewCell.swift
//  JJWBirthdayWishes
//
//  Created by 王杰 on 2022/5/3.
//

import UIKit

class DidTableViewCell: UITableViewCell {
    
        static let identifier = "toolTableViewCell"
        
        private let imageView1 = UIImageView()
        private let optionalFeaturesLabel = UILabel()
        private let imageView2 = UIImageView()

        
        func updateWithLeftIcon(leftIcon: String, leftSting: String) {
            // UIImageView1
            imageView1.image = UIImage(systemName: leftIcon)
            self.contentView.addSubview(imageView1)
            
            // UILabel
            optionalFeaturesLabel.text = leftSting
            self.contentView.addSubview(optionalFeaturesLabel)
            
            // UIImageView2
            imageView2.contentMode = UIView.ContentMode.scaleAspectFit
            imageView2.image = UIImage(systemName: "hand.thumbsup")
            
            self.contentView.addSubview(imageView2)
        }
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        }
        
        required init?(coder: NSCoder) {
            fatalError()
        }
        
        // 获取实际frame
        override func layoutSubviews() {
            super.layoutSubviews()
            
            // 功能的image
            imageView1.contentMode = UIView.ContentMode.scaleAspectFit
            imageView1.frame = CGRect(x: 10, y: 10, width: 30, height: 35)
            
            // 功能的label 太长则会影响 rightOfCellUIView 的 点赞头像展示及文字提醒的bug
            optionalFeaturesLabel.sizeToFit()
            optionalFeaturesLabel.center = CGPoint(x: imageView1.frame.width + 15 + optionalFeaturesLabel.frame.width/2, y: 55/2)
            
            // 根据cell的contentview的frame自动计算箭头的位置
            imageView2.frame = CGRect(x: contentView.frame.width - 35, y: 15, width: 25, height: 25)
            
        }
    }
