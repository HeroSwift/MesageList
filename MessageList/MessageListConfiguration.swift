
import UIKit

open class MessageListConfiguration {
    
    // 消息的水平内间距
    public var messagePaddingHorizontal: CGFloat = 10
    
    // 消息的垂直内间距
    public var messagePaddingVertical: CGFloat = 10
    
    // 用户头像的宽度
    public var userAvatarWidth: CGFloat = 40
    
    // 用户头像的高度
    public var userAvatarHeight: CGFloat = 40
    
    // 左侧用户名称是否显示
    public var leftUserNameVisible = false
    
    // 左侧用户名称 字体大小
    public var leftUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧用户名称 字体颜色
    public var leftUserNameTextColor = UIColor(red: 100 / 255, green: 100 / 255, blue: 100 / 255, alpha: 1)
    
    // 左侧用户名称与头像的距离
    public var leftUserNameMarginLeft: CGFloat = 10
    
    // 左侧用户名称与内容的距离
    public var leftUserNameMarginBottom: CGFloat = 4
    
    // 右侧用户名称是否显示
    public var rightUserNameVisible = true
    
    // 右侧用户名称 字体大小
    public var rightUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧用户名称 字体颜色
    public var rightUserNameTextColor = UIColor(red: 100 / 255, green: 100 / 255, blue: 100 / 255, alpha: 1)
    
    // 右侧用户名称与头像的距离
    public var rightUserNameMarginRight: CGFloat = 10
    
    // 右侧用户名称与内容的距离
    public var rightUserNameMarginBottom: CGFloat = 4
    
    //
    // MARK: - 文本消息
    //
    
    // 左侧文本消息背景图
    public var leftTextMessageBubble = UIImage(named: "bubble_left", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(8, 8, 16, 8))
    
    // 左侧文本消息的字体大小
    public var leftTextMessageTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧文本消息的字体颜色
    public var leftTextMessageTextColor = UIColor(red: 50 / 255, green: 50 / 255, blue: 50 / 255, alpha: 1)
    
    // 左侧文本消息到头像的距离
    public var leftTextMessageMarginLeft: CGFloat = 5
    
    // 左侧文本消息的内边距
    public var leftTextMessagePaddingLeft: CGFloat = 16
    public var leftTextMessagePaddingRight: CGFloat = 8
    public var leftTextMessagePaddingTop: CGFloat = 8
    public var leftTextMessagePaddingBottom: CGFloat = 8
    
    // 右侧文本消息背景图
    public var rightTextMessageBubble = UIImage(named: "bubble_right", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(8, 8, 8, 16))
    
    // 右侧文本消息的字体大小
    public var rightTextMessageTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧文本消息的字体颜色
    public var rightTextMessageTextColor = UIColor(red: 50 / 255, green: 50 / 255, blue: 50 / 255, alpha: 1)
    
    // 右侧文本消息到头像的距离
    public var rightTextMessageMarginRight: CGFloat = 5
    
    // 右侧文本消息的内边距
    public var rightTextMessagePaddingLeft: CGFloat = 8
    public var rightTextMessagePaddingRight: CGFloat = 16
    public var rightTextMessagePaddingTop: CGFloat = 8
    public var rightTextMessagePaddingBottom: CGFloat = 8
    
    //
    // MARK: - 图片消息
    //
    
    // 图片圆角
    public var imageMessageBorderRadius: CGFloat = 4
    
    // 左侧文本消息到头像的距离
    public var leftImageMessageMarginLeft: CGFloat = 10
    
    
    public init() { }
    
    open func isRightMessage(message: Message) -> Bool {
        return false
    }
    
    open func loadImage(imageView: UIImageView, url: String) {
        
    }
    
}
