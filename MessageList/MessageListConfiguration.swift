
import UIKit

open class MessageListConfiguration {
    
    // 消息的水平内间距
    public var messagePaddingHorizontal: CGFloat = 10
    
    // 消息的垂直内间距
    public var messagePaddingVertical: CGFloat = 10
    
    // 用户头像的宽度
    public var userAvatarWidth: CGFloat = 36
    
    // 用户头像的高度
    public var userAvatarHeight: CGFloat = 36
    
    // 左侧用户名称是否显示
    public var leftUserNameVisible = true
    
    // 左侧用户名称 字体大小
    public var leftUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧用户名称 字体颜色
    public var leftUserNameTextColor = UIColor(red: 100 / 255, green: 100 / 255, blue: 100 / 255, alpha: 1)
    
    // 左侧用户名称与头像的距离
    public var leftUserNameMarginLeft: CGFloat = 10
    
    // 左侧用户名称与内容的距离
    public var leftUserNameMarginBottom: CGFloat = 6
    
    // 右侧用户名称是否显示
    public var rightUserNameVisible = true
    
    // 右侧用户名称 字体大小
    public var rightUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧用户名称 字体颜色
    public var rightUserNameTextColor = UIColor(red: 100 / 255, green: 100 / 255, blue: 100 / 255, alpha: 1)
    
    // 右侧用户名称与头像的距离
    public var rightUserNameMarginRight: CGFloat = 10
    
    // 右侧用户名称与内容的距离
    public var rightUserNameMarginBottom: CGFloat = 6
    
    //
    // MARK: - 文本消息
    //
    
    // 左侧文本消息背景图
    public var leftTextMessageBubble = UIImage(named: "bubble_left", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(28, 10, 5, 5))
    
    // 左侧文本消息的字体大小
    public var leftTextMessageTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧文本消息的字体颜色
    public var leftTextMessageTextColor = UIColor(red: 60 / 255, green: 60 / 255, blue: 60 / 255, alpha: 1)
    
    // 左侧文本消息到头像的距离
    public var leftTextMessageMarginLeft: CGFloat = 10
    
    public var leftTextMessagePaddingLeft: CGFloat = 20
    public var leftTextMessagePaddingRight: CGFloat = 10
    public var leftTextMessagePaddingTop: CGFloat = 10
    public var leftTextMessagePaddingBottom: CGFloat = 10
    
    // 右侧文本消息背景图
    public var rightTextMessageBubble = UIImage(named: "bubble_right", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)
    
    // 右侧文本消息的字体大小
    public var rightTextMessageTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧文本消息的字体颜色
    public var rightTextMessageTextColor = UIColor(red: 160 / 255, green: 160 / 255, blue: 160 / 255, alpha: 1)
    
    // 右侧文本消息到头像的距离
    public var rightTextMessageMarginRight: CGFloat = 10
    
    
    public init() { }
    
    open func isRightMessage(message: Message) -> Bool {
        return false
    }
    
    open func loadImage(imageView: UIImageView, url: String) {
        
    }
    
}
