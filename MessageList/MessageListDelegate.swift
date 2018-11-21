

public protocol MessageListDelegate {
    
    // 点击列表
    func messageListDidClickList()
    
    // 点击消息
    func messageListDidClickMessage(message: Message)
    
    // 点击消息用户头像
    func messageListDidClickUserAvatar(message: Message)
    
    // 点击消息用户名称
    func messageListDidClickUserName(message: Message)
    
    // 点击消息正文
    func messageListDidClickContent(message: Message)
    
    // 长按消息正文
    func messageListDidLongPressContent(message: Message)
    
    // 点击消息失败图标
    func messageListDidClickFailure(message: Message)
    
    // 加载历史消息
    func messageListDidLoadMore(completion: (Bool) -> Void)
    
}

public extension MessageListDelegate {
    
    func messageListDidClickList() { }
    
    func messageListDidClickMessage(message: Message) { }
    
    func messageListDidClickUserAvatar(message: Message) { }
    
    func messageListDidClickUserName(message: Message) { }
    
    func messageListDidClickContent(message: Message) { }
    
    func messageListDidLongPressContent(message: Message) { }
    
    func messageListDidClickFailure(message: Message) { }
    
    func messageListDidLoadMore(completion: (Bool) -> Void) { }
    
}

