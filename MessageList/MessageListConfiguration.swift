
import UIKit

open class MessageListConfiguration {
    
    // 背景色
    public var backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)
    
    // 消息的水平内间距
    public var messagePaddingHorizontal: CGFloat = 10
    
    // 消息的垂直内间距
    public var messagePaddingVertical: CGFloat = 14
    
    // 用户头像的宽度
    public var userAvatarWidth: CGFloat = 40
    
    // 用户头像的高度
    public var userAvatarHeight: CGFloat = 40
    
    // 用户头像的边框大小
    public var userAvatarBorderWidth: CGFloat = 0
    
    // 用户头像的边框颜色
    public var userAvatarBorderColor = UIColor.gray
    
    // 用户头像的圆角
    public var userAvatarBorderRadius: CGFloat = 4
    
    // 发送失败的图标
    public var messageFailureIconNormal = UIImage(named: "failure_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!
    public var messageFailureIconPressed = UIImage(named: "failure_pressed", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!
    
    
    // 时间 背景色
    public var timeBackgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
    
    // 时间 圆角
    public var timeBorderRadius: CGFloat = 4
    
    // 时间 水平内间距
    public var timePaddingHorizontal: CGFloat = 6
    
    // 时间 垂直内间距
    public var timePaddingVertical: CGFloat = 4
    
    // 时间 字体大小
    public var timeTextFont = UIFont.systemFont(ofSize: 10)
    
    // 时间 字体颜色
    public var timeTextColor = UIColor.white
    
    
    
    
    // 事件 背景色
    public var eventBackgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
    
    // 事件 圆角
    public var eventBorderRadius: CGFloat = 4
    
    // 事件 水平内间距
    public var eventPaddingHorizontal: CGFloat = 6
    
    // 事件 垂直内间距
    public var eventPaddingVertical: CGFloat = 4
    
    // 事件 字体大小
    public var eventTextFont = UIFont.systemFont(ofSize: 10)
    
    // 事件 字体颜色
    public var eventTextColor = UIColor.white
    
    
    
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
    public var rightUserNameVisible = false
    
    // 右侧用户名称 字体大小
    public var rightUserNameTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧用户名称 字体颜色
    public var rightUserNameTextColor = UIColor(red: 100 / 255, green: 100 / 255, blue: 100 / 255, alpha: 1)
    
    // 右侧用户名称与头像的距离
    public var rightUserNameMarginRight: CGFloat = 10
    
    // 右侧用户名称与内容的距离
    public var rightUserNameMarginBottom: CGFloat = 4
    
    
    
    
    
    // 左侧状态图标到气泡的距离
    public var leftStatusViewMarginLeft: CGFloat = 10
    
    // 左侧状态图标到气泡底部的距离
    public var leftStatusViewMarginBottom: CGFloat = 5
    
    
    
    
    // 右侧状态图标到气泡的距离
    public var rightStatusViewMarginRight: CGFloat = 10
    
    // 右侧状态图标到气泡底部的距离
    public var rightStatusViewMarginBottom: CGFloat = 5
    
    
    
    
    
    //
    // MARK: - 文本消息
    //
    
    // 文本消息的选区颜色
    public var textMessageTintColor = UIColor(red: 0.99, green: 0.72, blue: 0.15, alpha: 1)
    

    
    // 左侧文本消息背景图
    public var leftTextMessageBubbleImage = UIImage(named: "bubble_left_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    // 左侧文本消息的字体大小
    public var leftTextMessageTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧文本消息的字体颜色
    public var leftTextMessageTextColor = UIColor(red: 30 / 255, green: 30 / 255, blue: 30 / 255, alpha: 1)
    
    // 左侧文本消息到头像的距离
    public var leftTextMessageMarginLeft: CGFloat = 5
    
    // 左侧文本消息的内边距
    public var leftTextMessagePaddingLeft: CGFloat = 16
    public var leftTextMessagePaddingRight: CGFloat = 12
    public var leftTextMessagePaddingTop: CGFloat = 12
    public var leftTextMessagePaddingBottom: CGFloat = 12

    
    
    
    // 右侧文本消息背景图
    public var rightTextMessageBubbleImage = UIImage(named: "bubble_active_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    // 右侧文本消息的字体大小
    public var rightTextMessageTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧文本消息的字体颜色
    public var rightTextMessageTextColor = UIColor(red: 30 / 255, green: 30 / 255, blue: 30 / 255, alpha: 1)
    
    // 右侧文本消息到头像的距离
    public var rightTextMessageMarginRight: CGFloat = 5
    
    // 右侧文本消息的内边距
    public var rightTextMessagePaddingLeft: CGFloat = 12
    public var rightTextMessagePaddingRight: CGFloat = 16
    public var rightTextMessagePaddingTop: CGFloat = 12
    public var rightTextMessagePaddingBottom: CGFloat = 12
    
    
    
    
    
    
    
    //
    // MARK: - 图片消息
    //
    
    // 图片边框大小
    public var imageMessageBorderWidth: CGFloat = 1 / UIScreen.main.scale
    
    // 图片边框颜色
    public var imageMessageBorderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1)
    
    // 图片圆角
    public var imageMessageBorderRadius: CGFloat = 4
    
    // 左侧图片消息到头像的距离
    public var leftImageMessageMarginLeft: CGFloat = 10
    
    // 右侧图片消息到头像的距离
    public var rightImageMessageMarginRight: CGFloat = 10
    
    
    
    
    //
    // MARK: - 语音消息
    //
    
    
    // 语音消息气泡的最小宽度
    public var audioMessageBubbleMinWidth: CGFloat = 80
    
    // 语音消息的最大时长
    public var audioMessageMaxDuration: Float = 60
    
    // 语音消息占据内容宽度的最大比例
    public var audioMessageMaxRatio: CGFloat = 4 / 5
    
    // 语音消息时长到气泡的距离
    public var audioMessageDurationSpacing: CGFloat = 10
    
    // 语音消息时长到气泡底部的距离
    public var audioMessageDurationBottom: CGFloat = 5
    
    // 语音消息单位到时长的距离
    public var audioMessageUnitSpacing: CGFloat = 1
    
    // 语音消息单位垂直偏移量
    public var audioMessageUnitBottom: CGFloat = 6
    
    
    
    
    // 左侧语音消息背景图
    public var leftAudioMessageBubbleImageNormal = UIImage(named: "bubble_left_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    public var leftAudioMessageBubbleImagePressed = UIImage(named: "bubble_left_pressed", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
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

    // 左侧语音消息单位的字体大小
    public var leftAudioMessageUnitTextFont = UIFont.systemFont(ofSize: 12)
    
    // 左侧语音消息单位的字体颜色
    public var leftAudioMessageUnitTextColor = UIColor(red: 150 / 255, green: 150 / 255, blue: 150 / 255, alpha: 1)
    
    
    
    
    // 右侧语音消息背景图
    public var rightAudioMessageBubbleImageNormal = UIImage(named: "bubble_active_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    public var rightAudioMessageBubbleImagePressed = UIImage(named: "bubble_active_pressed", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
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
    
    // 右侧语音消息单位的字体大小
    public var rightAudioMessageUnitTextFont = UIFont.systemFont(ofSize: 12)
    
    // 右侧语音消息单位的字体颜色
    public var rightAudioMessageUnitTextColor = UIColor(red: 150 / 255, green: 150 / 255, blue: 150 / 255, alpha: 1)
    
    
    
    
    
    
    
    
    //
    // MARK: - 视频消息
    //
    
    // 视频缩略图边框大小
    public var videoMessageBorderWidth: CGFloat = 1 / UIScreen.main.scale
    
    // 视频缩略图边框颜色
    public var videoMessageBorderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1)
    
    // 视频缩略图圆角
    public var videoMessageBorderRadius: CGFloat = 4
    
    // 视频播放图标
    public var videoMessagePlayImage = UIImage(named: "play", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!
    
    // 视频时长到缩略图右侧的距离
    public var videoMessageDurationMarginRight: CGFloat = 8
    
    // 视频时长到缩略图底部的距离
    public var videoMessageDurationMarginBottom: CGFloat = 4
    
    
    
    // 左侧视频消息到头像的距离
    public var leftVideoMessageMarginLeft: CGFloat = 10
    
    // 左侧视频消息时长的字体大小
    public var leftVideoMessageDurationTextFont = UIFont.systemFont(ofSize: 12)
    
    // 左侧视频消息时长的字体颜色
    public var leftVideoMessageDurationTextColor = UIColor.white
    
    // 左侧视频消息时长的字体阴影
    public var leftVideoMessageDurationShadowColor = UIColor.black
    public var leftVideoMessageDurationShadowOffset = CGSize.zero
    public var leftVideoMessageDurationShadowOpacity: Float = 1
    public var leftVideoMessageDurationShadowRadius: CGFloat = 4
    
    
    // 右侧视频消息到头像的距离
    public var rightVideoMessageMarginRight: CGFloat = 10
    
    // 右侧视频消息时长的字体大小
    public var rightVideoMessageDurationTextFont = UIFont.systemFont(ofSize: 12)
    
    // 右侧视频消息时长的字体颜色
    public var rightVideoMessageDurationTextColor = UIColor.white
    
    // 右侧视频消息时长的字体阴影
    public var rightVideoMessageDurationShadowColor = UIColor.black
    public var rightVideoMessageDurationShadowOffset = CGSize.zero
    public var rightVideoMessageDurationShadowOpacity: Float = 1
    public var rightVideoMessageDurationShadowRadius: CGFloat = 4
    
    
    
    //
    // MARK: - 名片消息
    //
    
    // 名片消息的气泡宽度
    public var cardMessageBubbleWidth: CGFloat = 230
    
    // 名片消息的缩略图宽度
    public var cardMessageThumbnailWidth: CGFloat = 42
    
    // 名片消息的缩略图高度
    public var cardMessageThumbnailHeight: CGFloat = 42
    
    // 名片消息的缩略图圆角
    public var cardMessageThumbnailBorderRadius: CGFloat = 0
    
    // 名片消息的分割线大小
    public var cardMessageDividerWidth: CGFloat = 1 / UIScreen.main.scale
    
    
    // 左侧名片消息到头像的距离
    public var leftCardMessageMarginLeft: CGFloat = 4
    
    // 左侧名片消息的气泡图片
    public var leftCardMessageBubbleImageNormal = UIImage(named: "bubble_left_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    public var leftCardMessageBubbleImagePressed = UIImage(named: "bubble_left_pressed", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    // 左侧名片消息的缩略图到气泡左侧的距离
    public var leftCardMessageThumbnailMarginLeft: CGFloat = 16
    
    // 左侧名片消息的缩略图到气泡顶部的距离
    public var leftCardMessageThumbnailMarginTop: CGFloat = 10
    
    // 左侧名片消息的标题字体大小
    public var leftCardMessageTitleTextFont = UIFont.systemFont(ofSize: 12)
    
    // 左侧名片消息的标题字体颜色
    public var leftCardMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 左侧名片消息的标题到缩略图的距离
    public var leftCardMessageTitleMarginLeft: CGFloat = 10
    
    // 左侧名片消息的标题到气泡右侧的距离
    public var leftCardMessageTitleMarginRight: CGFloat = 10
    
    // 左侧名片消息的标题到气泡顶部的距离
    public var leftCardMessageTitleMarginTop: CGFloat = 16
    
    // 左侧名片消息的描述字体大小
    public var leftCardMessageDescTextFont = UIFont.systemFont(ofSize: 10)
    
    // 左侧名片消息的描述字体颜色
    public var leftCardMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 左侧名片消息的描述到缩略图的距离
    public var leftCardMessageDescMarginLeft: CGFloat = 10
    
    // 左侧名片消息的描述到气泡右侧的距离
    public var leftCardMessageDescMarginRight: CGFloat = 10
    
    // 左侧名片消息的描述到标题的距离
    public var leftCardMessageDescMarginTop: CGFloat = 5
    
    // 左侧名片消息的分割线颜色
    public var leftCardMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 左侧名片消息的分割线到气泡顶部的距离
    public var leftCardMessageDividerMarginTop: CGFloat = 10
    
    // 左侧名片消息的分割线到气泡左侧的距离
    public var leftCardMessageDividerMarginLeft: CGFloat = 6
    
    // 左侧名片消息的分割线到气泡右侧的距离
    public var leftCardMessageDividerMarginRight: CGFloat = 0
    
    // 左侧名片消息的类型字体大小
    public var leftCardMessageTypeTextFont = UIFont.systemFont(ofSize: 10)
    
    // 左侧名片消息的类型字体颜色
    public var leftCardMessageTypeTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 左侧名片消息的类型到分割线的距离
    public var leftCardMessageTypeMarginTop: CGFloat = 4
    
    // 左侧名片消息的类型到气泡底部的距离
    public var leftCardMessageTypeMarginBottom: CGFloat = 4
    
    // 左侧名片消息的类型到气泡左侧的距离
    public var leftCardMessageTypeMarginLeft: CGFloat = 16
    
    
    
    
    
    
    
    
    // 右侧名片消息到头像的距离
    public var rightCardMessageMarginRight: CGFloat = 4
    
    // 右侧名片消息的气泡图片
    public var rightCardMessageBubbleImageNormal = UIImage(named: "bubble_right_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    public var rightCardMessageBubbleImagePressed = UIImage(named: "bubble_right_pressed", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    // 右侧名片消息的缩略图到气泡右侧的距离
    public var rightCardMessageThumbnailMarginLeft: CGFloat = 10
    
    // 右侧名片消息的缩略图到气泡顶部的距离
    public var rightCardMessageThumbnailMarginTop: CGFloat = 10
    
    // 右侧名片消息的标题字体大小
    public var rightCardMessageTitleTextFont = UIFont.systemFont(ofSize: 12)
    
    // 右侧名片消息的标题字体颜色
    public var rightCardMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 右侧名片消息的标题到缩略图的距离
    public var rightCardMessageTitleMarginLeft: CGFloat = 10
    
    // 右侧名片消息的标题到气泡右侧的距离
    public var rightCardMessageTitleMarginRight: CGFloat = 16
    
    // 右侧名片消息的标题到气泡顶部的距离
    public var rightCardMessageTitleMarginTop: CGFloat = 16
    
    // 右侧名片消息的描述字体大小
    public var rightCardMessageDescTextFont = UIFont.systemFont(ofSize: 10)
    
    // 右侧名片消息的描述字体颜色
    public var rightCardMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 右侧名片消息的描述到缩略图的距离
    public var rightCardMessageDescMarginLeft: CGFloat = 10
    
    // 右侧名片消息的描述到气泡右侧的距离
    public var rightCardMessageDescMarginRight: CGFloat = 16
    
    // 右侧名片消息的描述到标题的距离
    public var rightCardMessageDescMarginTop: CGFloat = 5
    
    // 右侧名片消息的分割线颜色
    public var rightCardMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 右侧名片消息的分割线到气泡顶部的距离
    public var rightCardMessageDividerMarginTop: CGFloat = 10
    
    // 右侧名片消息的分割线到气泡右侧的距离
    public var rightCardMessageDividerMarginRight: CGFloat = 6
    
    // 右侧名片消息的分割线到气泡左侧的距离
    public var rightCardMessageDividerMarginLeft: CGFloat = 0
    
    // 右侧名片消息的类型字体大小
    public var rightCardMessageTypeTextFont = UIFont.systemFont(ofSize: 10)
    
    // 右侧名片消息的类型字体颜色
    public var rightCardMessageTypeTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 右侧名片消息的类型到分割线的距离
    public var rightCardMessageTypeMarginTop: CGFloat = 4
    
    // 右侧名片消息的类型到气泡底部的距离
    public var rightCardMessageTypeMarginBottom: CGFloat = 4
    
    // 右侧名片消息的类型到气泡左侧的距离
    public var rightCardMessageTypeMarginLeft: CGFloat = 10
    
    
    
    
    
    
    
    
    //
    // MARK: - 文章消息
    //
    
    // 文章消息的气泡宽度
    public var postMessageBubbleWidth: CGFloat = 230
    
    // 文章消息的缩略图圆角
    public var postMessageThumbnailBorderRadius: CGFloat = 0
    
    // 文章消息的分割线大小
    public var postMessageDividerWidth: CGFloat = 1 / UIScreen.main.scale
    
    
    
    
    
    // 左侧文章消息到头像的距离
    public var leftPostMessageMarginLeft: CGFloat = 4
    
    // 左侧文章消息的气泡图片
    public var leftPostMessageBubbleImageNormal = UIImage(named: "bubble_left_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    public var leftPostMessageBubbleImagePressed = UIImage(named: "bubble_left_pressed", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    // 左侧文章消息的标题字体大小
    public var leftPostMessageTitleTextFont = UIFont.systemFont(ofSize: 14)
    
    // 左侧文章消息的标题字体颜色
    public var leftPostMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 左侧文章消息的标题到气泡左侧的距离
    public var leftPostMessageTitleMarginLeft: CGFloat = 16
    
    // 左侧文章消息的标题到气泡右侧的距离
    public var leftPostMessageTitleMarginRight: CGFloat = 10
    
    // 左侧文章消息的标题到气泡顶部的距离
    public var leftPostMessageTitleMarginTop: CGFloat = 10
    
    // 左侧文章消息的描述字体大小
    public var leftPostMessageDescTextFont = UIFont.systemFont(ofSize: 10)
    
    // 左侧文章消息的描述字体颜色
    public var leftPostMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 左侧文章消息的描述到气泡左侧的距离
    public var leftPostMessageDescMarginLeft: CGFloat = 16
    
    // 左侧文章消息的描述到标题的距离
    public var leftPostMessageDescMarginTop: CGFloat = 7
    
    // 左侧文章消息的缩略图宽度
    public var leftPostMessageThumbnailWidth: CGFloat = 36
    
    // 左侧文章消息的缩略图高度
    public var leftPostMessageThumbnailHeight: CGFloat = 36
    
    // 左侧文章消息的缩略图到描述的距离
    public var leftPostMessageThumbnailMarginLeft: CGFloat = 5
    
    // 左侧文章消息的缩略图到气泡右侧的距离
    public var leftPostMessageThumbnailMarginRight: CGFloat = 10
    
    // 左侧文章消息的缩略图到标题的距离
    public var leftPostMessageThumbnailMarginTop: CGFloat = 8
    
    // 左侧文章消息的分割线颜色
    public var leftPostMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 左侧文章消息的分割线到缩略图底部的距离
    public var leftPostMessageDividerMarginTop: CGFloat = 10
    
    // 左侧文章消息的分割线到气泡左侧的距离
    public var leftPostMessageDividerMarginLeft: CGFloat = 6
    
    // 左侧文章消息的分割线到气泡右侧的距离
    public var leftPostMessageDividerMarginRight: CGFloat = 0
    
    // 左侧文章消息的品牌字体大小
    public var leftPostMessageBrandTextFont = UIFont.systemFont(ofSize: 10)
    
    // 左侧文章消息的品牌字体颜色
    public var leftPostMessageBrandTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 左侧文章消息的品牌到分割线的距离
    public var leftPostMessageBrandMarginTop: CGFloat = 4
    
    // 左侧文章消息的品牌到气泡底部的距离
    public var leftPostMessageBrandMarginBottom: CGFloat = 4
    
    // 左侧文章消息的品牌到气泡左侧的距离
    public var leftPostMessageBrandMarginLeft: CGFloat = 16
    
    
    
    
    
    
    
    // 右侧文章消息到头像的距离
    public var rightPostMessageMarginRight: CGFloat = 4
    
    // 右侧文章消息的气泡图片
    public var rightPostMessageBubbleImageNormal = UIImage(named: "bubble_right_normal", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    public var rightPostMessageBubbleImagePressed = UIImage(named: "bubble_right_pressed", in: Bundle(for: MessageListConfiguration.self), compatibleWith: nil)!.resizableImage(withCapInsets: UIEdgeInsetsMake(26, 20, 20, 20), resizingMode: .tile)
    
    // 右侧文章消息的标题字体大小
    public var rightPostMessageTitleTextFont = UIFont.systemFont(ofSize: 14)
    
    // 右侧文章消息的标题字体颜色
    public var rightPostMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 右侧文章消息的标题到气泡左侧的距离
    public var rightPostMessageTitleMarginLeft: CGFloat = 10
    
    // 右侧文章消息的标题到气泡右侧的距离
    public var rightPostMessageTitleMarginRight: CGFloat = 16
    
    // 右侧文章消息的标题到气泡顶部的距离
    public var rightPostMessageTitleMarginTop: CGFloat = 10
    
    // 右侧文章消息的描述字体大小
    public var rightPostMessageDescTextFont = UIFont.systemFont(ofSize: 10)
    
    // 右侧文章消息的描述字体颜色
    public var rightPostMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 右侧文章消息的描述到气泡左侧的距离
    public var rightPostMessageDescMarginLeft: CGFloat = 10
    
    // 右侧文章消息的描述到标题的距离
    public var rightPostMessageDescMarginTop: CGFloat = 7
    
    // 右侧文章消息的缩略图宽度
    public var rightPostMessageThumbnailWidth: CGFloat = 36
    
    // 右侧文章消息的缩略图高度
    public var rightPostMessageThumbnailHeight: CGFloat = 36
    
    // 右侧文章消息的缩略图到描述的距离
    public var rightPostMessageThumbnailMarginLeft: CGFloat = 5
    
    // 右侧文章消息的缩略图到气泡右侧的距离
    public var rightPostMessageThumbnailMarginRight: CGFloat = 16
    
    // 右侧文章消息的缩略图到标题的距离
    public var rightPostMessageThumbnailMarginTop: CGFloat = 8
    
    // 右侧文章消息的分割线颜色
    public var rightPostMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 右侧文章消息的分割线到缩略图底部的距离
    public var rightPostMessageDividerMarginTop: CGFloat = 10
    
    // 右侧文章消息的分割线到气泡左侧的距离
    public var rightPostMessageDividerMarginLeft: CGFloat = 0
    
    // 右侧文章消息的分割线到气泡右侧的距离
    public var rightPostMessageDividerMarginRight: CGFloat = 6
    
    // 右侧文章消息的品牌字体大小
    public var rightPostMessageBrandTextFont = UIFont.systemFont(ofSize: 10)
    
    // 右侧文章消息的品牌字体颜色
    public var rightPostMessageBrandTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 右侧文章消息的品牌到分割线的距离
    public var rightPostMessageBrandMarginTop: CGFloat = 4
    
    // 右侧文章消息的品牌到气泡底部的距离
    public var rightPostMessageBrandMarginBottom: CGFloat = 4
    
    // 右侧文章消息的品牌到气泡左侧的距离
    public var rightPostMessageBrandMarginLeft: CGFloat = 10
    
    
    
    
    
    
    
    
    
    public init() { }
    
    open func isRightMessage(message: Message) -> Bool {
        return false
    }
    
    open func formatText(textView: UITextView, text: String) {
        
    }
    
    open func formatEvent(textView: UILabel, event: String) {
        
    }
    
    open func loadImage(imageView: UIImageView, url: String) {
        
    }
    
}
