
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
    public var leftUserNameVisible = true
    
    // 左侧用户名称 字体大小
    public var leftUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧用户名称 字体颜色
    public var leftUserNameTextColor = UIColor(red: 100 / 255, green: 100 / 255, blue: 100 / 255, alpha: 1)
    
    // 左侧用户名称与头像的距离
    public var leftUserNameMarginLeft: CGFloat = 10
    
    // 左侧用户名称与内容的距离
    public var leftUserNameMarginBottom: CGFloat = 4
    
    
    
    
    
    
    
    // 右侧用户名称是否显示
    public var rightUserNameVisible = false
    
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
    public var leftTextMessageTextColor = UIColor(red: 30 / 255, green: 30 / 255, blue: 30 / 255, alpha: 1)
    
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
    public var rightTextMessageTextColor = UIColor(red: 30 / 255, green: 30 / 255, blue: 30 / 255, alpha: 1)
    
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
    
    
    
    
    
    
    //
    // MARK: - 语音消息
    //
    
    
    // 语音消息气泡的最小宽度
    public var audioMessageBubbleMinWidth: CGFloat = 60
    
    // 语音消息的最大时长
    public var audioMessageMaxDuration: Float = 60
    
    
    
    
    // 左侧语音消息背景图
    public var leftAudioMessageBubbleImage = UIImage(named: "bubble_left", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(8, 8, 16, 8))
    
    // 左侧语音消息气泡高度
    public var leftAudioMessageBubbleHeight: CGFloat = 40
    
    // 左侧语音消息声波图
    public var leftAudioMessageWave = UIImage(named: "wave_3_left", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!
    
    public var leftAudioMessageWaves = [UIImage](arrayLiteral: 
        UIImage(named: "wave_1_left", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!,
        UIImage(named: "wave_2_left", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!,
        UIImage(named: "wave_3_left", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!
    )
    
    // 左侧语音消息到头像的距离
    public var leftAudioMessageMarginLeft: CGFloat = 5
    
    // 左侧语音消息声波到气泡左侧的距离
    public var leftAudioMessageWaveMarginLeft: CGFloat = 15
    
    // 左侧语音消息时长的字体大小
    public var leftAudioMessageDurationTextFont = UIFont.systemFont(ofSize: 12)
    
    // 左侧语音消息时长的字体颜色
    public var leftAudioMessageDurationTextColor = UIColor(red: 150 / 255, green: 150 / 255, blue: 150 / 255, alpha: 1)
    
    // 左侧语音消息时长到气泡的距离
    public var leftAudioMessageDurationMarginLeft: CGFloat = 10
    
    // 左侧语音消息时长到气泡底部的距离
    public var leftAudioMessageDurationMarginBottom: CGFloat = 5
    
    // 左侧语音消息单位的字体大小
    public var leftAudioMessageUnitTextFont = UIFont.systemFont(ofSize: 12)
    
    // 左侧语音消息单位的字体颜色
    public var leftAudioMessageUnitTextColor = UIColor(red: 150 / 255, green: 150 / 255, blue: 150 / 255, alpha: 1)
    
    // 左侧语音消息单位到气泡的距离
    public var leftAudioMessageUnitMarginLeft: CGFloat = 1
    
    // 左侧语音消息单位垂直偏移量
    public var leftAudioMessageUnitCenterY: CGFloat = -1
    
    
    
    
    // 右侧语音消息背景图
    public var rightAudioMessageBubbleImage = UIImage(named: "bubble_right", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(8, 8, 8, 16))
    
    // 右侧语音消息气泡高度
    public var rightAudioMessageBubbleHeight: CGFloat = 40
    
    // 右侧语音消息声波图
    public var rightAudioMessageWave = UIImage(named: "wave_3_right", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!
    
    public var rightAudioMessageWaves = [UIImage](arrayLiteral:
        UIImage(named: "wave_1_right", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!,
        UIImage(named: "wave_2_right", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!,
        UIImage(named: "wave_3_right", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!
    )
    
    // 右侧语音消息到头像的距离
    public var rightAudioMessageMarginRight: CGFloat = 5
    
    // 右侧语音消息声波到气泡右侧的距离
    public var rightAudioMessageWaveMarginRight: CGFloat = 15
    
    // 右侧语音消息时长的字体大小
    public var rightAudioMessageDurationTextFont = UIFont.systemFont(ofSize: 12)
    
    // 右侧语音消息时长的字体颜色
    public var rightAudioMessageDurationTextColor = UIColor(red: 150 / 255, green: 150 / 255, blue: 150 / 255, alpha: 1)
    
    // 右侧语音消息时长到气泡的距离
    public var rightAudioMessageDurationMarginRight: CGFloat = 10
    
    // 右侧语音消息时长到气泡底部的距离
    public var rightAudioMessageDurationMarginBottom: CGFloat = 5
    
    // 右侧语音消息单位的字体大小
    public var rightAudioMessageUnitTextFont = UIFont.systemFont(ofSize: 12)
    
    // 右侧语音消息单位的字体颜色
    public var rightAudioMessageUnitTextColor = UIColor(red: 150 / 255, green: 150 / 255, blue: 150 / 255, alpha: 1)
    
    // 右侧语音消息单位到气泡的距离
    public var rightAudioMessageUnitMarginRight: CGFloat = 1
    
    // 右侧语音消息单位垂直偏移量
    public var rightAudioMessageUnitCenterY: CGFloat = -1
    
    
    
    
    public init() { }
    
    open func isRightMessage(message: Message) -> Bool {
        return false
    }
    
    open func loadImage(imageView: UIImageView, url: String) {
        
    }
    
}
