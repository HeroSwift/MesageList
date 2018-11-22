//
//  ViewController.swift
//  Example
//
//  Created by zhujl on 2018/10/29.
//  Copyright © 2018年 finstao. All rights reserved.
//

import UIKit

import MessageList
import MessageInput
import EmotionInput

import Kingfisher

class Configuration: MessageListConfiguration {
    
    override func loadImage(imageView: UIImageView, url: String) {
        let url = URL(string: url)
        imageView.kf.setImage(with: url)
    }
    
    override func isRightMessage(message: Message) -> Bool {
        return message.user.id == "1"
    }
    
    override func formatText(textView: UITextView, text: String) {
        textView.text = text
    }
    
    override func formatEvent(textView: UILabel, event: String) {
        textView.text = event
    }
    
}

class ViewController: UIViewController {

    var messageList: MessageList!
    var messageInput: MessageInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageList = MessageList(configuration: Configuration())
        
        messageList.delegate = self
        
        messageList.messageList.append(
            EventMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", event: "哈哈哈哈123ABCabc")
        )
        
        messageList.messageList.append(
            EventMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", event: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
        )
        
        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", text: "哈哈哈哈123ABCabc")
        )
        
        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "http://audio.finstao.com/4e83b0a9e2.m4a", duration: 15)
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "", text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
        )
        
        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222")
        )
        
        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "哈哈哈哈123ABCabc")
        )

        messageList.messageList.append(
            TextMessage(id: "123", user: User(id: "1", name: "musicode", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
        )

        
        
        
        
        
        
        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352510068&di=0250dd83a146d5a08790a5a38b3cf040&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019da557ce3c6d0000018c1bc99e8c.jpg%401280w_1l_2o_100sh.jpg", width: 200, height: 93)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352604948&di=8ac3e8ece043246c8f0b9a0a48544f12&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01959e59e2fc0ba80121ae0c6b817d.jpg%401280w_1l_2o_100sh.png", width: 200, height: 355)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352693970&di=57d9982ceb31af0da85ccc0a17b92da3&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F34fae6cd7b899e51784c6c2f49a7d933c9950dce.jpg", width: 200, height: 200)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352510068&di=0250dd83a146d5a08790a5a38b3cf040&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019da557ce3c6d0000018c1bc99e8c.jpg%401280w_1l_2o_100sh.jpg", width: 200, height: 93)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352604948&di=8ac3e8ece043246c8f0b9a0a48544f12&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01959e59e2fc0ba80121ae0c6b817d.jpg%401280w_1l_2o_100sh.png", width: 200, height: 355)
        )

        messageList.messageList.append(
            ImageMessage(id: "123", user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352693970&di=57d9982ceb31af0da85ccc0a17b92da3&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F34fae6cd7b899e51784c6c2f49a7d933c9950dce.jpg", width: 200, height: 200)
        )
        
        
        
        
        

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 10)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 20)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 30)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 40)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 50)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 60)
        )




        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 10)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 20)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 30)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 40)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 50)
        )

        messageList.messageList.append(
            AudioMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 60)
        )

        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            VideoMessage(id: "123", user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.messageList.append(
            CardMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", type: "个人名片", link: "asd")
        )
        
        messageList.messageList.append(
            CardMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", type: "个人名片", link: "asd")
        )
        
        messageList.messageList.append(
            CardMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", type: "个人名片", link: "asd")
        )
        
        messageList.messageList.append(
            CardMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", type: "个人名片", link: "asd")
        )
        
        messageList.messageList.append(
            CardMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", type: "个人名片", link: "asd")
        )
        
        messageList.messageList.append(
            CardMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", type: "个人名片", link: "asd")
        )
        
        messageList.messageList.append(
            PostMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", brand: "123", link: "123")
        )
        
        messageList.messageList.append(
            PostMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", brand: "123", link: "123")
        )
        
        messageList.messageList.append(
            PostMessage(id: "123", user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", brand: "123", link: "123")
        )
        
        messageList.messageList.append(
            PostMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", brand: "123", link: "123")
        )
        
        messageList.messageList.append(
            PostMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", brand: "123", link: "123")
        )
        
        messageList.messageList.append(
            PostMessage(id: "123", user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", brand: "123", link: "123")
        )

        messageList.hasMoreMessage = true
        
        messageList.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(messageList)

        messageInput = MessageInput(configuration: MessageInputConfiguration())
        messageInput.translatesAutoresizingMaskIntoConstraints = false
        
        let emotionList = [
            
            Emotion(code: "😄", name: "", imageAsset: UIImage(named: "emoji_1f604"), inline: true),
            Emotion(code: "😷", name: "", imageAsset: UIImage(named: "emoji_1f637"), inline: true),
            Emotion(code: "😂", name: "", imageAsset: UIImage(named: "emoji_1f602"), inline: true),
            Emotion(code: "😝", name: "", imageAsset: UIImage(named: "emoji_1f61d"), inline: true),
            Emotion(code: "😳", name: "", imageAsset: UIImage(named: "emoji_1f633"), inline: true),
            Emotion(code: "😱", name: "", imageAsset: UIImage(named: "emoji_1f631"), inline: true),
            Emotion(code: "😔", name: "", imageAsset: UIImage(named: "emoji_1f614"), inline: true),
            Emotion(code: "😒", name: "", imageAsset: UIImage(named: "emoji_1f612"), inline: true),
            Emotion(code: "🤗", name: "", imageAsset: UIImage(named: "emoji_1f917"), inline: true),
            Emotion(code: "🙂", name: "", imageAsset: UIImage(named: "emoji_1f642"), inline: true),
            Emotion(code: "😊", name: "", imageAsset: UIImage(named: "emoji_1f60a"), inline: true),
            Emotion(code: "😋", name: "", imageAsset: UIImage(named: "emoji_1f60b"), inline: true),
            Emotion(code: "😌", name: "", imageAsset: UIImage(named: "emoji_1f60c"), inline: true),
            Emotion(code: "😍", name: "", imageAsset: UIImage(named: "emoji_1f60d"), inline: true),
            Emotion(code: "😎", name: "", imageAsset: UIImage(named: "emoji_1f60e"), inline: true),
            Emotion(code: "😪", name: "", imageAsset: UIImage(named: "emoji_1f62a"), inline: true),
            Emotion(code: "😓", name: "", imageAsset: UIImage(named: "emoji_1f613"), inline: true),
            Emotion(code: "😭", name: "", imageAsset: UIImage(named: "emoji_1f62d"), inline: true),
            Emotion(code: "😘", name: "", imageAsset: UIImage(named: "emoji_1f618"), inline: true),
            Emotion(code: "😏", name: "", imageAsset: UIImage(named: "emoji_1f60f"), inline: true),
            Emotion(code: "😚", name: "", imageAsset: UIImage(named: "emoji_1f61a"), inline: true),
            Emotion(code: "😛", name: "", imageAsset: UIImage(named: "emoji_1f61b"), inline: true),
            Emotion(code: "😜", name: "", imageAsset: UIImage(named: "emoji_1f61c"), inline: true),
            
            
            Emotion(code: "💪", name: "", imageAsset: UIImage(named: "emoji_1f4aa"), inline: true),
            Emotion(code: "👊", name: "", imageAsset: UIImage(named: "emoji_1f44a"), inline: true),
            Emotion(code: "👍", name: "", imageAsset: UIImage(named: "emoji_1f44d"), inline: true),
            Emotion(code: "🤘", name: "", imageAsset: UIImage(named: "emoji_1f918"), inline: true),
            Emotion(code: "👏", name: "", imageAsset: UIImage(named: "emoji_1f44f"), inline: true),
            Emotion(code: "👋", name: "", imageAsset: UIImage(named: "emoji_1f44b"), inline: true),
            Emotion(code: "🙌", name: "", imageAsset: UIImage(named: "emoji_1f64c"), inline: true),
            Emotion(code: "🖐", name: "", imageAsset: UIImage(named: "emoji_1f590"), inline: true),
            Emotion(code: "🖖", name: "", imageAsset: UIImage(named: "emoji_1f596"), inline: true),
            Emotion(code: "👎", name: "", imageAsset: UIImage(named: "emoji_1f44e"), inline: true),
            Emotion(code: "🙏", name: "", imageAsset: UIImage(named: "emoji_1f64f"), inline: true),
            Emotion(code: "👌", name: "", imageAsset: UIImage(named: "emoji_1f44c"), inline: true),
            Emotion(code: "👈", name: "", imageAsset: UIImage(named: "emoji_1f448"), inline: true),
            Emotion(code: "👉", name: "", imageAsset: UIImage(named: "emoji_1f449"), inline: true),
            Emotion(code: "👆", name: "", imageAsset: UIImage(named: "emoji_1f446"), inline: true),
            Emotion(code: "👇", name: "", imageAsset: UIImage(named: "emoji_1f447"), inline: true),
            Emotion(code: "🎃", name: "", imageAsset: UIImage(named: "emoji_1f383"), inline: true),
            Emotion(code: "👀", name: "", imageAsset: UIImage(named: "emoji_1f440"), inline: true),
            Emotion(code: "👃", name: "", imageAsset: UIImage(named: "emoji_1f443"), inline: true),
            Emotion(code: "👄", name: "", imageAsset: UIImage(named: "emoji_1f444"), inline: true),
            Emotion(code: "👂", name: "", imageAsset: UIImage(named: "emoji_1f442"), inline: true),
            Emotion(code: "👻", name: "", imageAsset: UIImage(named: "emoji_1f47b"), inline: true),
            Emotion(code: "💋", name: "", imageAsset: UIImage(named: "emoji_1f48b"), inline: true),
            
            
            
            Emotion(code: "😞", name: "", imageAsset: UIImage(named: "emoji_1f61e"), inline: true),
            Emotion(code: "😟", name: "", imageAsset: UIImage(named: "emoji_1f61f"), inline: true),
            Emotion(code: "😫", name: "", imageAsset: UIImage(named: "emoji_1f62b"), inline: true),
            Emotion(code: "😮", name: "", imageAsset: UIImage(named: "emoji_1f62e"), inline: true),
            Emotion(code: "😯", name: "", imageAsset: UIImage(named: "emoji_1f62f"), inline: true),
            Emotion(code: "😉", name: "", imageAsset: UIImage(named: "emoji_1f609"), inline: true),
            Emotion(code: "😡", name: "", imageAsset: UIImage(named: "emoji_1f621"), inline: true),
            Emotion(code: "😢", name: "", imageAsset: UIImage(named: "emoji_1f622"), inline: true),
            Emotion(code: "😣", name: "", imageAsset: UIImage(named: "emoji_1f623"), inline: true),
            Emotion(code: "😤", name: "", imageAsset: UIImage(named: "emoji_1f624"), inline: true),
            Emotion(code: "😥", name: "", imageAsset: UIImage(named: "emoji_1f625"), inline: true),
            Emotion(code: "😧", name: "", imageAsset: UIImage(named: "emoji_1f627"), inline: true),
            Emotion(code: "😨", name: "", imageAsset: UIImage(named: "emoji_1f628"), inline: true),
            Emotion(code: "😩", name: "", imageAsset: UIImage(named: "emoji_1f629"), inline: true),
            Emotion(code: "😲", name: "", imageAsset: UIImage(named: "emoji_1f632"), inline: true),
            Emotion(code: "😴", name: "", imageAsset: UIImage(named: "emoji_1f634"), inline: true),
            Emotion(code: "😵", name: "", imageAsset: UIImage(named: "emoji_1f635"), inline: true),
            Emotion(code: "🙄", name: "", imageAsset: UIImage(named: "emoji_1f644"), inline: true),
            Emotion(code: "🤒", name: "", imageAsset: UIImage(named: "emoji_1f912"), inline: true),
            Emotion(code: "🤓", name: "", imageAsset: UIImage(named: "emoji_1f913"), inline: true),
            Emotion(code: "🤔", name: "", imageAsset: UIImage(named: "emoji_1f914"), inline: true),
            
        ]
        
        messageInput.delegate = self
        
        messageInput.setEmotionSetList([
            EmotionSet.build(iconAsset: UIImage(named: "emoji_icon")!, emotionList: emotionList, columns: 8, rows: 3, width: 24, height: 24, hasDeleteButton: true, hasIndicator: true)
        ])
        
        messageInput.addEmotionFilter(EmojiFilter(emotionList: emotionList))
        
        view.addSubview(messageInput)
        
        view.addConstraints([
            NSLayoutConstraint(item: messageInput, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageInput, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageInput, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0),
            
            NSLayoutConstraint(item: messageList, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageList, attribute: .bottom, relatedBy: .equal, toItem: messageInput, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageList, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: messageList, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0),
        ])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: MessageListDelegate {
    
    func messageListDidClickList() {
        print("click list")
        messageInput.reset()
    }
    
    func messageListDidClickMessage(message: Message) {
        print("click message \(message)")
    }
    
    func messageListDidClickUserAvatar(message: Message) {
        print("click user avatar \(message)")
    }
    
    func messageListDidClickUserName(message: Message) {
        print("click user name \(message)")
    }
    
    func messageListDidClickContent(message: Message) {
        print("click content \(message)")
    }
    
    func messageListDidLongPressContent(message: Message) {
        print("click long press content \(message)")
    }
    
    func messageListDidClickFailure(message: Message) {
        print("click failure \(message)")
    }
    
    func messageListDidLoadMore() {
        print("click load more")
        messageList.loadMoreComplete(hasMoreMessage: true)
    }
    
}

extension ViewController: MessageInputDelegate {
    
    func messageInputDidSendAudio(audioPath: String, audioDuration: TimeInterval) {
        print("send voice  \(audioPath) \(audioDuration)")
    }
    
    func messageInputDidSendEmotion(emotion: Emotion) {
        print("send emotion  \(emotion.code)")
    }
    
    func messageInputDidSendText(text: String) {
        print("send text  \(text)")
    }
    
    func messageInputDidSendImages(images: [ImageFile]) {
        print("send image  \(images)")
    }
    
    func messageInputDidSendPhoto(photo: ImageFile) {
        print("send photo  \(photo)")
    }
    
    func messageInputDidSendVideo(videoPath: String, videoDuration: TimeInterval, thumbnail: ImageFile) {
        print("send video  \(videoPath) \(videoDuration)  \(thumbnail)")
    }
    
    func messageInputDidLift() {
        messageList.scrollToBottom(animated: true)
    }
    
}
