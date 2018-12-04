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
    
    override func formatText(textView: UITextView, text: NSMutableAttributedString) {
        
    }
    
}

class ViewController: UIViewController {

    var messageList: MessageList!
    
    var id = 0
    
    func getId() -> String {
        id += 1
        return "\(id)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageList = MessageList(configuration: Configuration())
        
        messageList.delegate = self
        messageList.hasMoreMessage = true
        messageList.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        view.addSubview(messageList)
        
        messageList.append(message:
            EventMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", event: "哈哈哈哈 [link:musicode] 123ABCabc")
        )
        
        messageList.append(message:
            EventMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", event: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", text: "1")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", text: "哈哈哈哈123ABCabc")
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "http://audio.finstao.com/4e83b0a9e2.m4a", duration: 15)
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "", text: "😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍😍")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "1😍11  [url:www.baidu.com]  22😍2  http://baidu.com 3😍33 1551234😍5678 ------😍--- [link:15598765432] ---😍-")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", text: "1")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", text: "哈哈哈哈123ABCabc")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "1", name: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "哈哈哈哈123ABCabc")
        )
        
        messageList.append(message:
            TextMessage(id: getId(), user: User(id: "1", name: "musicode", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", text: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈")
        )
        
        
        
        
        
        
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352510068&di=0250dd83a146d5a08790a5a38b3cf040&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019da557ce3c6d0000018c1bc99e8c.jpg%401280w_1l_2o_100sh.jpg", width: 200, height: 93)
        )
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352604948&di=8ac3e8ece043246c8f0b9a0a48544f12&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01959e59e2fc0ba80121ae0c6b817d.jpg%401280w_1l_2o_100sh.png", width: 200, height: 355)
        )
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "123", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352693970&di=57d9982ceb31af0da85ccc0a17b92da3&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F34fae6cd7b899e51784c6c2f49a7d933c9950dce.jpg", width: 200, height: 200)
        )
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352510068&di=0250dd83a146d5a08790a5a38b3cf040&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019da557ce3c6d0000018c1bc99e8c.jpg%401280w_1l_2o_100sh.jpg", width: 200, height: 93)
        )
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352604948&di=8ac3e8ece043246c8f0b9a0a48544f12&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01959e59e2fc0ba80121ae0c6b817d.jpg%401280w_1l_2o_100sh.png", width: 200, height: 355)
        )
        
        messageList.append(message:
            ImageMessage(id: getId(), user: User(id: "1", name: "mu2", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1542352693970&di=57d9982ceb31af0da85ccc0a17b92da3&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F34fae6cd7b899e51784c6c2f49a7d933c9950dce.jpg", width: 200, height: 200)
        )
        
        
        
        
        
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 10)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 20)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 30)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 40)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 50)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 60)
        )
        
        
        
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 10)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 20)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 30)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 40)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 50)
        )
        
        messageList.append(message:
            AudioMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 60)
        )
        
        
        messageList.append(message:
            VideoMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            VideoMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            VideoMessage(id: getId(), user: User(id: "123", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            VideoMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            VideoMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            VideoMessage(id: getId(), user: User(id: "1", name: "mu1", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", url: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", duration: 1, thumbnail: "https://img.ui.cn/data/file/6/2/0/1839026.png?imageMogr2/auto-orient/format/jpg/strip/thumbnail/!1800%3E/quality/90/", width: 200, height: 140)
        )
        
        messageList.append(message:
            CardMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "个人名片", link: "asd")
        )
        
        messageList.append(message:
            CardMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "个人名片", link: "asd")
        )
        
        messageList.append(message:
            CardMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "个人名片", link: "asd")
        )
        
        messageList.append(message:
            CardMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "个人名片", link: "asd")
        )
        
        messageList.append(message:
            CardMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "个人名片", link: "asd")
        )
        
        messageList.append(message:
            CardMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "hahahah 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "个人名片", link: "asd")
        )
        
        messageList.append(message:
            PostMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "123", link: "123")
        )
        
        messageList.append(message:
            PostMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "123", link: "123")
        )
        
        messageList.append(message:
            PostMessage(id: getId(), user: User(id: "123", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "123", link: "123")
        )
        
        messageList.append(message:
            PostMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendIng, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "123", link: "123")
        )
        
        messageList.append(message:
            PostMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendSuccess, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "123", link: "123")
        )
        
        messageList.append(message:
            PostMessage(id: getId(), user: User(id: "1", name: "哈哈哈", avatar: "https://img.finstao.com/7eb10748bd.jpg"), status: MessageStatus.sendFailure, time: "星期二", thumbnail: "https://img.finstao.com/7eb10748bd.jpg", title: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", desc: "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈", label: "123", link: "123")
        )

        
        view.addConstraints([
            
                NSLayoutConstraint(item: messageList, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: messageList, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: messageList, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: messageList, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: MessageListDelegate {
    
    public func messageListDidClickList() {
        print("click list")
    }
    
    public func messageListDidClickUserAvatar(message: Message) {
        print("click user avatar \(message)")
    }
    
    public func messageListDidClickUserName(message: Message) {
        print("click user name \(message)")
    }
    
    public func messageListDidClickContent(message: Message) {
        print("click content \(message)")
    }
    
    public func messageListDidLongPressContent(message: Message) {
        print("click long press content \(message)")
    }
    
    public func messageListDidClickFailure(message: Message) {
        print("click failure \(message)")
//        message.status = .sendIng
//        messageList.update(messageId: message.id, message: message)
        messageList.remove(messageId: message.id)
    }
    
    public func messageListDidClickLink(link: String) {
        print("click link \(link)")
    }
    
    public func messageListDidLoadMore() {
        print("click load more")
    }
    
}
