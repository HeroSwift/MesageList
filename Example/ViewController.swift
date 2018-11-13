//
//  ViewController.swift
//  Example
//
//  Created by zhujl on 2018/10/29.
//  Copyright © 2018年 finstao. All rights reserved.
//

import UIKit

import MessageList

class Configuration: MessageListConfiguration {
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let messageList = MessageList(configuration: Configuration())
        let user = User(id: "123", name: "哈哈哈", avatar: "")
        let textMessage = TextMessage(id: "123", user: user, status: MessageStatus.sendSuccess, timestamp: 1542097801840, text: "123123213")
        messageList.messageList.append(textMessage)
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

