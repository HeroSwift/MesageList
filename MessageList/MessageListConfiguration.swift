
import UIKit
import AVFoundation

open class MessageListConfiguration {
    
    var audioPlayer = AudioPlayer()
    
    // 内边距
    public var paddingVertical: CGFloat = 20
    
    // 消息的垂直间距
    public var messageMarginTop: CGFloat = 20
    
    // 消息的水平内间距
    public var messagePaddingHorizontal: CGFloat = 10

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
    
    // 用户头像的背景色
    public var userAvatarBackgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)
    
    // 发送失败的图标
    public var messageFailureIconNormal = UIImage(named: "message_list_failure_normal")!
    public var messageFailureIconPressed = UIImage(named: "message_list_failure_pressed")!
    
    
    // 链接颜色
    public var linkTextColor = UIColor(red: 0.08, green: 0.52, blue: 0.88, alpha: 1)
    
    // 时间 背景色
    public var timeBackgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.14)
    
    // 时间 圆角
    public var timeBorderRadius: CGFloat = 5
    
    // 时间 水平内间距
    public var timePaddingHorizontal: CGFloat = 6
    
    // 时间 垂直内间距
    public var timePaddingVertical: CGFloat = 4
    
    // 时间 字体大小
    public var timeTextFont = UIFont.systemFont(ofSize: 11)
    
    // 时间 字体颜色
    public var timeTextColor = UIColor.white
    
    
    
    
    // 事件 背景色
    public var eventBackgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.14)
    
    // 事件 圆角
    public var eventBorderRadius: CGFloat = 5
    
    // 事件 水平内间距
    public var eventPaddingHorizontal: CGFloat = 6
    
    // 事件 垂直内间距
    public var eventPaddingVertical: CGFloat = 4
    
    // 事件 字体大小
    public var eventTextFont = UIFont.systemFont(ofSize: 11)
    
    // 事件 字体颜色
    public var eventTextColor = UIColor.white
    
    // 事件 行间距
    public var eventTextLineSpacing: CGFloat = 2
    
    
    
    // 左侧用户名称是否显示
    public var leftUserNameVisible = true
    
    // 左侧用户名称 字体大小
    public var leftUserNameTextFont = UIFont.systemFont(ofSize: 11)
    
    // 左侧用户名称 字体颜色
    public var leftUserNameTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 左侧用户名称与头像的距离
    public var leftUserNameMarginLeft: CGFloat = 10
    
    // 左侧用户名称与内容的距离
    public var leftUserNameMarginBottom: CGFloat = 4
    
    
    
    
    
    
    
    // 右侧用户名称是否显示
    public var rightUserNameVisible = true
    
    // 右侧用户名称 字体大小
    public var rightUserNameTextFont = UIFont.systemFont(ofSize: 11)
    
    // 右侧用户名称 字体颜色
    public var rightUserNameTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
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
    public var textMessageTintColor = UIColor(red: 1, green: 0.48, blue: 0.03, alpha: 1)

    
    
    
    // 左侧文本消息背景图
    public var leftTextMessageBubbleImageNormal = UIImage(named: "message_list_bubble_left_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var leftTextMessageBubbleImagePressed = UIImage(named: "message_list_bubble_left_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 左侧文本消息的字体大小
    public var leftTextMessageTextFont = UIFont.systemFont(ofSize: 16)
    
    // 左侧文本消息的字体颜色
    public var leftTextMessageTextColor = UIColor(red: 30 / 255, green: 30 / 255, blue: 30 / 255, alpha: 1)
    
    // 左侧文本消息的行间距
    public var leftTextMessageLineSpacing: CGFloat = 2
    
    // 左侧文本消息到头像的距离
    public var leftTextMessageMarginLeft: CGFloat = 5
    
    // 左侧文本消息的最小宽度
    public var leftTextMessageMinWidth: CGFloat = 50
    
    // 左侧文本消息的内边距
    public var leftTextMessagePaddingLeft: CGFloat = 16
    public var leftTextMessagePaddingRight: CGFloat = 12
    public var leftTextMessagePaddingTop: CGFloat = 12
    public var leftTextMessagePaddingBottom: CGFloat = 12

    
    
    
    // 右侧文本消息背景图
    public var rightTextMessageBubbleImageNormal = UIImage(named: "message_list_bubble_active_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var rightTextMessageBubbleImagePressed = UIImage(named: "message_list_bubble_active_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 右侧文本消息的字体大小
    public var rightTextMessageTextFont = UIFont.systemFont(ofSize: 16)
    
    // 右侧文本消息的字体颜色
    public var rightTextMessageTextColor = UIColor(red: 30 / 255, green: 30 / 255, blue: 30 / 255, alpha: 1)
    
    // 右侧文本消息的行间距
    public var rightTextMessageLineSpacing: CGFloat = 2
    
    // 右侧文本消息到头像的距离
    public var rightTextMessageMarginRight: CGFloat = 5
    
    // 右侧文本消息的最小宽度
    public var rightTextMessageMinWidth: CGFloat = 50
    
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
    public var imageMessageBorderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.2)
    
    // 图片圆角
    public var imageMessageBorderRadius: CGFloat = 4
    
    // 图片背景色
    public var imageMessageBackgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)
    
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
    public var leftAudioMessageBubbleImageNormal = UIImage(named: "message_list_bubble_left_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var leftAudioMessageBubbleImagePressed = UIImage(named: "message_list_bubble_left_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 左侧语音消息气泡高度
    public var leftAudioMessageBubbleHeight: CGFloat = 40
    
    // 左侧语音消息声波图
    public var leftAudioMessageWave = UIImage(named: "message_list_wave_3_left")!
    
    public var leftAudioMessageWaves = [UIImage](arrayLiteral: 
        UIImage(named: "message_list_wave_1_left")!,
        UIImage(named: "message_list_wave_2_left")!,
        UIImage(named: "message_list_wave_3_left")!
    )
    
    // 左侧语音消息到头像的距离
    public var leftAudioMessageMarginLeft: CGFloat = 5
    
    // 左侧语音消息声波到气泡左侧的距离
    public var leftAudioMessageWaveMarginLeft: CGFloat = 15
    
    // 左侧语音消息时长的字体大小
    public var leftAudioMessageDurationTextFont = UIFont.systemFont(ofSize: 12)
    
    // 左侧语音消息时长的字体颜色
    public var leftAudioMessageDurationTextColor = UIColor(red: 0.59, green: 0.59, blue: 0.59, alpha: 1)

    // 左侧语音消息单位的字体大小
    public var leftAudioMessageUnitTextFont = UIFont.systemFont(ofSize: 12)
    
    // 左侧语音消息单位的字体颜色
    public var leftAudioMessageUnitTextColor = UIColor(red: 0.59, green: 0.59, blue: 0.59, alpha: 1)
    
    
    
    
    // 右侧语音消息背景图
    public var rightAudioMessageBubbleImageNormal = UIImage(named: "message_list_bubble_active_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var rightAudioMessageBubbleImagePressed = UIImage(named: "message_list_bubble_active_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 右侧语音消息气泡高度
    public var rightAudioMessageBubbleHeight: CGFloat = 40
    
    // 右侧语音消息声波图
    public var rightAudioMessageWave = UIImage(named: "message_list_wave_3_right")!
    
    public var rightAudioMessageWaves = [UIImage](arrayLiteral:
        UIImage(named: "message_list_wave_1_right")!,
        UIImage(named: "message_list_wave_2_right")!,
        UIImage(named: "message_list_wave_3_right")!
    )
    
    // 右侧语音消息到头像的距离
    public var rightAudioMessageMarginRight: CGFloat = 5
    
    // 右侧语音消息声波到气泡右侧的距离
    public var rightAudioMessageWaveMarginRight: CGFloat = 15
    
    // 右侧语音消息时长的字体大小
    public var rightAudioMessageDurationTextFont = UIFont.systemFont(ofSize: 12)
    
    // 右侧语音消息时长的字体颜色
    public var rightAudioMessageDurationTextColor = UIColor(red: 0.59, green: 0.59, blue: 0.59, alpha: 1)
    
    // 右侧语音消息单位的字体大小
    public var rightAudioMessageUnitTextFont = UIFont.systemFont(ofSize: 12)
    
    // 右侧语音消息单位的字体颜色
    public var rightAudioMessageUnitTextColor = UIColor(red: 0.59, green: 0.59, blue: 0.59, alpha: 1)
    
    
    
    
    
    
    
    
    //
    // MARK: - 视频消息
    //
    
    // 视频缩略图边框大小
    public var videoMessageBorderWidth: CGFloat = 1 / UIScreen.main.scale
    
    // 视频缩略图边框颜色
    public var videoMessageBorderColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.2)
    
    // 视频缩略图圆角
    public var videoMessageBorderRadius: CGFloat = 4
    
    // 视频缩略图背景色
    public var videoMessageBackgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92, alpha: 1)
    
    // 视频播放图标
    public var videoMessagePlayImage = UIImage(named: "message_list_play")!
    
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
    public var cardMessageThumbnailWidth: CGFloat = 40
    
    // 名片消息的缩略图高度
    public var cardMessageThumbnailHeight: CGFloat = 40
    
    // 名片消息的缩略图圆角
    public var cardMessageThumbnailBorderRadius: CGFloat = 0
    
    // 名片消息的缩略图背景色
    public var cardMessageThumbnailBackgroundColor = UIColor.clear
    
    // 名片消息的分割线大小
    public var cardMessageDividerWidth: CGFloat = 1 / UIScreen.main.scale
    
    
    
    // 左侧名片消息到头像的距离
    public var leftCardMessageMarginLeft: CGFloat = 4
    
    // 左侧名片消息的气泡图片
    public var leftCardMessageBubbleImageNormal = UIImage(named: "message_list_bubble_left_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var leftCardMessageBubbleImagePressed = UIImage(named: "message_list_bubble_left_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 左侧卡片消息的垂直内边距
    public var leftCardMessagePaddingVertical: CGFloat = 10
    
    // 左侧卡片消息的水平内边距
    public var leftCardMessagePaddingHorizontal: CGFloat = 12
    
    // 左侧卡片消息的左边内边距（有个箭头）
    public var leftCardMessagePaddingLeft: CGFloat = 16
    
    // 左侧名片消息的标题字体大小
    public var leftCardMessageTitleTextFont = UIFont.systemFont(ofSize: 14)
    
    // 左侧名片消息的标题字体颜色
    public var leftCardMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 左侧名片消息的标题到缩略图的距离
    public var leftCardMessageTitleMarginLeft: CGFloat = 10
    
    // 左侧名片消息的标题到气泡顶部的距离
    public var leftCardMessageTitleMarginTop: CGFloat = 3
    
    // 左侧名片消息的描述字体大小
    public var leftCardMessageDescTextFont = UIFont.systemFont(ofSize: 11)
    
    // 左侧名片消息的描述字体颜色
    public var leftCardMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 左侧名片消息的描述到标题的距离
    public var leftCardMessageDescMarginTop: CGFloat = 5
    
    // 左侧名片消息的分割线颜色
    public var leftCardMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 左侧名片消息的分割线到气泡左侧的距离
    public var leftCardMessageDividerMarginLeft: CGFloat = 4
    
    // 左侧名片消息的分割线到气泡右侧的距离
    public var leftCardMessageDividerMarginRight: CGFloat = 0
    
    // 左侧名片消息的标签字体大小
    public var leftCardMessageLabelTextFont = UIFont.systemFont(ofSize: 10)
    
    // 左侧名片消息的标签字体颜色
    public var leftCardMessageLabelTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 左侧名片消息的标签到分割线的距离
    public var leftCardMessageLabelMarginTop: CGFloat = 4
    
    // 左侧名片消息的标签到气泡底部的距离
    public var leftCardMessageLabelMarginBottom: CGFloat = 4
    
    
    
    
    
    
    
    // 右侧名片消息到头像的距离
    public var rightCardMessageMarginRight: CGFloat = 4
    
    // 右侧名片消息的气泡图片
    public var rightCardMessageBubbleImageNormal = UIImage(named: "message_list_bubble_right_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var rightCardMessageBubbleImagePressed = UIImage(named: "message_list_bubble_right_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 右侧卡片消息的垂直内边距
    public var rightCardMessagePaddingVertical: CGFloat = 10
    
    // 右侧卡片消息的水平内边距
    public var rightCardMessagePaddingHorizontal: CGFloat = 12
    
    // 右侧卡片消息的右边内边距（有个箭头）
    public var rightCardMessagePaddingRight: CGFloat = 16
    
    // 右侧名片消息的标题字体大小
    public var rightCardMessageTitleTextFont = UIFont.systemFont(ofSize: 14)
    
    // 右侧名片消息的标题字体颜色
    public var rightCardMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 右侧名片消息的标题到缩略图的距离
    public var rightCardMessageTitleMarginLeft: CGFloat = 10
    
    // 右侧名片消息的标题到气泡顶部的距离
    public var rightCardMessageTitleMarginTop: CGFloat = 3
    
    // 右侧名片消息的描述字体大小
    public var rightCardMessageDescTextFont = UIFont.systemFont(ofSize: 11)
    
    // 右侧名片消息的描述字体颜色
    public var rightCardMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 右侧名片消息的描述到标题的距离
    public var rightCardMessageDescMarginTop: CGFloat = 5
    
    // 右侧名片消息的分割线颜色
    public var rightCardMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 右侧名片消息的分割线到气泡左侧的距离
    public var rightCardMessageDividerMarginLeft: CGFloat = 0
    
    // 右侧名片消息的分割线到气泡右侧的距离
    public var rightCardMessageDividerMarginRight: CGFloat = 4

    // 右侧名片消息的标签字体大小
    public var rightCardMessageLabelTextFont = UIFont.systemFont(ofSize: 10)
    
    // 右侧名片消息的标签字体颜色
    public var rightCardMessageLabelTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 右侧名片消息的标签到分割线的距离
    public var rightCardMessageLabelMarginTop: CGFloat = 4
    
    // 右侧名片消息的标签到气泡底部的距离
    public var rightCardMessageLabelMarginBottom: CGFloat = 4    
    
    
    
    
    
    
    
    //
    // MARK: - 文章消息
    //
    
    // 文章消息的气泡宽度
    public var postMessageBubbleWidth: CGFloat = 230
    
    // 名片消息的缩略图宽度
    public var postMessageThumbnailWidth: CGFloat = 38
    
    // 名片消息的缩略图高度
    public var postMessageThumbnailHeight: CGFloat = 38
    
    // 文章消息的缩略图圆角
    public var postMessageThumbnailBorderRadius: CGFloat = 0
    
    // 文章消息的缩略图背景色
    public var postMessageThumbnailBackgroundColor = UIColor.clear
    
    // 文章消息的分割线大小
    public var postMessageDividerWidth: CGFloat = 1 / UIScreen.main.scale
    
    
    
    
    
    // 左侧文章消息到头像的距离
    public var leftPostMessageMarginLeft: CGFloat = 4
    
    // 左侧文章消息的气泡图片
    public var leftPostMessageBubbleImageNormal = UIImage(named: "message_list_bubble_left_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var leftPostMessageBubbleImagePressed = UIImage(named: "message_list_bubble_left_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 左侧文章消息的垂直内边距
    public var leftPostMessagePaddingVertical: CGFloat = 10
    
    // 左侧文章消息的水平内边距
    public var leftPostMessagePaddingHorizontal: CGFloat = 12
    
    // 左侧文章消息的左边内边距（有个箭头）
    public var leftPostMessagePaddingLeft: CGFloat = 16
    
    // 左侧文章消息的标题字体大小
    public var leftPostMessageTitleTextFont = UIFont.systemFont(ofSize: 14)
    
    // 左侧文章消息的标题字体颜色
    public var leftPostMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 左侧文章消息的描述字体大小
    public var leftPostMessageDescTextFont = UIFont.systemFont(ofSize: 11)
    
    // 左侧文章消息的描述字体颜色
    public var leftPostMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 左侧文章消息的描述到标题的距离
    public var leftPostMessageDescMarginTop: CGFloat = 7
    
    // 左侧文章消息的描述到缩略图的距离
    public var leftPostMessageDescMarginRight: CGFloat = 6
    
    // 左侧文章消息的缩略图到标题的距离
    public var leftPostMessageThumbnailMarginTop: CGFloat = 8
    
    // 左侧文章消息的分割线颜色
    public var leftPostMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    // 左侧文章消息的分割线到气泡左侧的距离
    public var leftPostMessageDividerMarginLeft: CGFloat = 4
    
    // 左侧文章消息的分割线到气泡右侧的距离
    public var leftPostMessageDividerMarginRight: CGFloat = 0
    
    // 左侧文章消息的标签字体大小
    public var leftPostMessageLabelTextFont = UIFont.systemFont(ofSize: 10)
    
    // 左侧文章消息的标签字体颜色
    public var leftPostMessageLabelTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 左侧文章消息的标签到分割线的距离
    public var leftPostMessageLabelMarginTop: CGFloat = 4
    
    // 左侧文章消息的标签到气泡底部的距离
    public var leftPostMessageLabelMarginBottom: CGFloat = 4
    
    
    
    
    
    
    
    // 右侧文章消息到头像的距离
    public var rightPostMessageMarginRight: CGFloat = 4
    
    // 右侧文章消息的气泡图片
    public var rightPostMessageBubbleImageNormal = UIImage(named: "message_list_bubble_right_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var rightPostMessageBubbleImagePressed = UIImage(named: "message_list_bubble_right_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 右侧文章消息的垂直内边距
    public var rightPostMessagePaddingVertical: CGFloat = 10
    
    // 右侧文章消息的水平内边距
    public var rightPostMessagePaddingHorizontal: CGFloat = 12
    
    // 右侧文章消息的左边内边距（有个箭头）
    public var rightPostMessagePaddingRight: CGFloat = 16
    
    // 右侧文章消息的标题字体大小
    public var rightPostMessageTitleTextFont = UIFont.systemFont(ofSize: 14)
    
    // 右侧文章消息的标题字体颜色
    public var rightPostMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 右侧文章消息的描述字体大小
    public var rightPostMessageDescTextFont = UIFont.systemFont(ofSize: 11)
    
    // 右侧文章消息的描述字体颜色
    public var rightPostMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 右侧文章消息的描述到标题的距离
    public var rightPostMessageDescMarginTop: CGFloat = 7
    
    // 右侧文章消息的描述到缩略图的距离
    public var rightPostMessageDescMarginRight: CGFloat = 6
    
    // 右侧文章消息的缩略图到标题的距离
    public var rightPostMessageThumbnailMarginTop: CGFloat = 8
    
    // 右侧文章消息的分割线颜色
    public var rightPostMessageDividerColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)

    // 右侧文章消息的分割线到气泡左侧的距离
    public var rightPostMessageDividerMarginLeft: CGFloat = 0
    
    // 右侧文章消息的分割线到气泡右侧的距离
    public var rightPostMessageDividerMarginRight: CGFloat = 4
    
    // 右侧文章消息的标签字体大小
    public var rightPostMessageLabelTextFont = UIFont.systemFont(ofSize: 10)
    
    // 右侧文章消息的标签字体颜色
    public var rightPostMessageLabelTextColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1)
    
    // 右侧文章消息的标签到分割线的距离
    public var rightPostMessageLabelMarginTop: CGFloat = 4
    
    // 右侧文章消息的标签到气泡底部的距离
    public var rightPostMessageLabelMarginBottom: CGFloat = 4
    
    
    
    
    
    
    
    //
    // MARK: - 文件消息
    //
    
    // 文件消息的气泡宽度
    public var fileMessageBubbleWidth: CGFloat = 230
    
    // 文件消息的类型图标宽度
    public var fileMessageIconWidth: CGFloat = 40
    
    // 文件消息的类型图标高度
    public var fileMessageIconHeight: CGFloat = 40
    
    // 文件消息的类型图标圆角
    public var fileMessageIconBorderRadius: CGFloat = 0
    
    // 文件消息的类型图标背景色
    public var fileMessageIconBackgroundColor = UIColor.clear
    
    // 文件消息类型
    public var fileMessageIconWord = UIImage(named: "message_list_file_word")
    public var fileMessageIconExcel = UIImage(named: "message_list_file_excel")
    public var fileMessageIconPpt = UIImage(named: "message_list_file_ppt")
    public var fileMessageIconPdf = UIImage(named: "message_list_file_pdf")
    public var fileMessageIconTxt = UIImage(named: "message_list_file_txt")
    
    
    
    // 左侧文件消息到头像的距离
    public var leftFileMessageMarginLeft: CGFloat = 4
    
    // 左侧文件消息的气泡图片
    public var leftFileMessageBubbleImageNormal = UIImage(named: "message_list_bubble_left_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var leftFileMessageBubbleImagePressed = UIImage(named: "message_list_bubble_left_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 左侧文件消息的垂直内边距
    public var leftFileMessagePaddingVertical: CGFloat = 10
    
    // 左侧文件消息的水平内边距
    public var leftFileMessagePaddingHorizontal: CGFloat = 12
    
    // 左侧文件消息的左边内边距（有个箭头）
    public var leftFileMessagePaddingLeft: CGFloat = 16
    
    // 左侧文件消息的标题字体大小
    public var leftFileMessageTitleTextFont = UIFont.systemFont(ofSize: 13)
    
    // 左侧文件消息的标题字体颜色
    public var leftFileMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 左侧文件消息的标题到类型图标的距离
    public var leftFileMessageTitleMarginLeft: CGFloat = 10
    
    // 左侧文件消息的标题到类型图标顶部的距离
    public var leftFileMessageTitleMarginTop: CGFloat = 3
    
    // 左侧文件消息的描述字体大小
    public var leftFileMessageDescTextFont = UIFont.systemFont(ofSize: 11)
    
    // 左侧文件消息的描述字体颜色
    public var leftFileMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 左侧文件消息的描述到标题的距离
    public var leftFileMessageDescMarginTop: CGFloat = 4
    
    
    
    
    
    
    // 右侧文件消息到头像的距离
    public var rightFileMessageMarginRight: CGFloat = 4
    
    // 右侧文件消息的气泡图片
    public var rightFileMessageBubbleImageNormal = UIImage(named: "message_list_bubble_right_normal")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    public var rightFileMessageBubbleImagePressed = UIImage(named: "message_list_bubble_right_pressed")!.resizableImage(withCapInsets: UIEdgeInsets(top: 26, left: 20, bottom: 20, right: 20), resizingMode: .tile)
    
    // 右侧文件消息的垂直内边距
    public var rightFileMessagePaddingVertical: CGFloat = 10
    
    // 右侧文件消息的水平内边距
    public var rightFileMessagePaddingHorizontal: CGFloat = 12
    
    // 右侧文件消息的右边内边距（有个箭头）
    public var rightFileMessagePaddingRight: CGFloat = 16

    // 右侧文件消息的标题字体大小
    public var rightFileMessageTitleTextFont = UIFont.systemFont(ofSize: 13)
    
    // 右侧文件消息的标题字体颜色
    public var rightFileMessageTitleTextColor = UIColor(red: 0.06, green: 0.06, blue: 0.06, alpha: 1)
    
    // 右侧文件消息的标题到类型图标的距离
    public var rightFileMessageTitleMarginLeft: CGFloat = 10
    
    // 右侧文件消息的标题到类型图标顶部的距离
    public var rightFileMessageTitleMarginTop: CGFloat = 3
    
    // 右侧文件消息的描述字体大小
    public var rightFileMessageDescTextFont = UIFont.systemFont(ofSize: 11)
    
    // 右侧文件消息的描述字体颜色
    public var rightFileMessageDescTextColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1)
    
    // 右侧文件消息的描述到标题的距离
    public var rightFileMessageDescMarginTop: CGFloat = 4
    
    
    
    
    
    // 菜单文本
    public var menuItemCopy = "复制"
    
    public var menuItemShare = "转发"
    
    public var menuItemRecall = "撤回"
    
    public var menuItemDelete = "删除"
    
    public var setAudioCategory: (AVAudioSession.Category) -> Void = {
        if #available(iOS 10.0, *) {
            try! AVAudioSession.sharedInstance().setCategory($0, mode: .default, options: [])
        }
        else {
            // 妈的，swift 不支持调用 setCategory 了，外部自己实现吧
        }
    }
    
    public init() { }
    
    open func isRightMessage(message: Message) -> Bool {
        return false
    }
    
    open func formatText(font: UIFont, text: NSMutableAttributedString) {
        
    }
    
    open func loadImage(imageView: UIImageView, url: String, width: CGFloat, height: CGFloat) {
        
    }
    
}
