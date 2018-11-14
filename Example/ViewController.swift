//
//  ViewController.swift
//  Example
//
//  Created by zhujl on 2018/10/29.
//  Copyright © 2018年 finstao. All rights reserved.
//

import UIKit

import MessageList
import Kingfisher

class Configuration: MessageListConfiguration {
    
    override func loadImage(imageView: UIImageView, url: String) {
        let url = URL(string: url)
        imageView.kf.setImage(with: url)
    }
    
    override func isRightMessage(message: Message) -> Bool {
        return message.user.id == "1"
    }
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let messageList = MessageList(configuration: Configuration())

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, text: "你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头你妈的头")
        )
        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "musicode", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, text: "123123213")
        )
        
        messageList.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(messageList)
        
        view.addConstraints([
            NSLayoutConstraint(item: messageList, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageList, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageList, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageList, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0),
        ])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

