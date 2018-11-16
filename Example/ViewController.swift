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
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, text: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
        )
        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "musicode", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, text: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
        )

        
        
        
        
        
        
        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352510068&di=0250dd83a146d5a08790a5a38b3cf040&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019da557ce3c6d0000018c1bc99e8c.jpg%401280w_1l_2o_100sh.jpg", width: 200, height: 93)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352604948&di=8ac3e8ece043246c8f0b9a0a48544f12&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01959e59e2fc0ba80121ae0c6b817d.jpg%401280w_1l_2o_100sh.png", width: 200, height: 355)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352693970&di=57d9982ceb31af0da85ccc0a17b92da3&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F34fae6cd7b899e51784c6c2f49a7d933c9950dce.jpg", width: 200, height: 200)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352510068&di=0250dd83a146d5a08790a5a38b3cf040&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019da557ce3c6d0000018c1bc99e8c.jpg%401280w_1l_2o_100sh.jpg", width: 200, height: 93)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352604948&di=8ac3e8ece043246c8f0b9a0a48544f12&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01959e59e2fc0ba80121ae0c6b817d.jpg%401280w_1l_2o_100sh.png", width: 200, height: 355)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352693970&di=57d9982ceb31af0da85ccc0a17b92da3&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F34fae6cd7b899e51784c6c2f49a7d933c9950dce.jpg", width: 200, height: 200)
        )
        
        
        
        
        

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 10)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 20)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 30)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 40)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 50)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 60)
        )




        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 10)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 20)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 30)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 40)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 50)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 60)
        )

        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, timestamp: 1542097801840, url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
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

