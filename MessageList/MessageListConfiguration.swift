
import UIKit

public class MessageListConfiguration {
    
    // 消息的水平内间距
    public var messagePaddingHorizontal: CGFloat = 10
    
    // 消息的垂直内间距
    public var messagePaddingVertical: CGFloat = 10
    
    // 用户头像的宽度
    public var userAvatarWidth: CGFloat = 40
    
    // 用户头像的高度
    public var userAvatarHeight: CGFloat = 40
    
    // 左侧用户名称是否显示
    public var leftUserNameVisible = true
    
    // 左侧用户名称 字体大小
    public var leftUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧用户名称 字体颜色
    public var leftUserNameTextColor = UIColor(red: 160 / 255, green: 160 / 255, blue: 160 / 255, alpha: 1)
    
    // 左侧用户名称与头像的距离
    public var leftUserNameMarginLeft: CGFloat = 10
    
    // 左侧用户名称与内容的距离
    public var leftUserNameMarginBottom: CGFloat = 10
    
    // 右侧用户名称是否显示
    public var rightUserNameVisible = true
    
    // 右侧用户名称 字体大小
    public var rightUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧用户名称 字体颜色
    public var rightUserNameTextColor = UIColor(red: 160 / 255, green: 160 / 255, blue: 160 / 255, alpha: 1)
    
    // 右侧用户名称与头像的距离
    public var rightUserNameMarginRight: CGFloat = 10
    
    // 右侧用户名称与内容的距离
    public var rightUserNameMarginBottom: CGFloat = 10
    
    //
    // MARK: - 文本消息
    //
    
    // 左侧文本消息的字体大小
    public var leftTextMessageTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧文本消息的字体颜色
    public var leftTextMessageTextColor = UIColor(red: 160 / 255, green: 160 / 255, blue: 160 / 255, alpha: 1)
    
    
    public init() { }
    
    open func isRightMessage(message: Message) -> Bool {
        return true
    }
    
}
