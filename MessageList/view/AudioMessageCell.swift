
import UIKit

class AudioMessageCell: MessageCell {
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()
    
    var bubbleView = UIImageView()
    
    var animationView = UIImageView()
    
    var durationView = UILabel()
    
    var unitView = UILabel()
    
    var bubbleViewWidthConstraint: NSLayoutConstraint!
    
    // 当前音频的 Url
    private var url = ""
    
    // 是否正在播放
    private var isPlaying = false
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        // 头像
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(avatarView)
        
        // 昵称
        nameView.numberOfLines = 1
        nameView.translatesAutoresizingMaskIntoConstraints = false
        
        // 气泡
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(bubbleView)
        
        // 声波
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.animationDuration = 1
        animationView.animationRepeatCount = 0
        animationView.isUserInteractionEnabled = false
        contentView.addSubview(animationView)
        
        // 时长
        durationView.font = configuration.leftAudioMessageDurationTextFont
        durationView.textColor = configuration.leftAudioMessageDurationTextColor
        durationView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(durationView)
        
        // 单位
        unitView.text = "''"
        unitView.font = configuration.leftAudioMessageUnitTextFont
        unitView.textColor = configuration.leftAudioMessageUnitTextColor
        unitView.translatesAutoresizingMaskIntoConstraints = false
        unitView.sizeToFit()
        contentView.addSubview(unitView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        addClickHandler(view: bubbleView, selector: #selector(onAudioClick))
        addLongPressHandler(view: bubbleView, selector: #selector(onContentLongPress))
        
        bubbleViewWidthConstraint = NSLayoutConstraint(item: bubbleView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),
            bubbleViewWidthConstraint
        ])
        
    }
    
    override func update(configuration: MessageListConfiguration, message: Message) {
        
        let audioMessage = message as! AudioMessage
        
        nameView.text = audioMessage.user.name
        nameView.sizeToFit()
        
        let duration = audioMessage.duration
        durationView.text = "\(duration)"
        durationView.sizeToFit()
        
        let durationRatio = Float(duration) / configuration.audioMessageMaxDuration
        // 最大宽度的 2/3 吧
        let maxWidth = 2 * getContentMaxWidth(configuration: configuration) / 3
        
        let bubbleWidth = max(maxWidth * CGFloat(durationRatio), configuration.audioMessageBubbleMinWidth)
        if bubbleWidth != bubbleViewWidthConstraint.constant {
            bubbleViewWidthConstraint.constant = bubbleWidth
            setNeedsLayout()
        }

        let avatar = audioMessage.user.avatar
        if avatar != "" {
            configuration.loadImage(imageView: avatarView, url: avatar)
        }
        
    }
    
    @objc func onAudioClick() {
        
        if isPlaying {
            animationView.stopAnimating()
        }
        else {
            animationView.startAnimating()
        }
        
        isPlaying = !isPlaying
        
    }
    
}
