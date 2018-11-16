
import UIKit

class AudioMessageCell: MessageCell {
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()
    
    var bubbleView = UIImageView()
    
    var animationView = UIImageView()
    
    var durationView = UILabel()
    
    var unitView = UILabel()
    
    var bubbleWidthConstraint: NSLayoutConstraint!
    
    var spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    var failureView = UIImageView()
    
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
        
        // spinner icon
        spinnerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(spinnerView)
        
        // failure icon
        failureView.translatesAutoresizingMaskIntoConstraints = false
        failureView.image = configuration.messageFailureIcon
        contentView.addSubview(failureView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        addClickHandler(view: bubbleView, selector: #selector(onBubbleClick))
        addClickHandler(view: spinnerView, selector: #selector(onSpinnerIconClick))
        addClickHandler(view: failureView, selector: #selector(onFailureIconClick))
        addLongPressHandler(view: bubbleView, selector: #selector(onContentLongPress))
        
        bubbleWidthConstraint = NSLayoutConstraint(item: bubbleView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            bubbleWidthConstraint
        ])
        
    }
    
    override func update(configuration: MessageListConfiguration, message: Message) {
        
        let audioMessage = message as! AudioMessage
        
        let avatar = audioMessage.user.avatar
        if avatar != "" {
            configuration.loadImage(imageView: avatarView, url: avatar)
        }
        
        nameView.text = audioMessage.user.name
        nameView.sizeToFit()
        
        let duration = audioMessage.duration
        durationView.text = "\(duration)"
        durationView.sizeToFit()
        
        let durationRatio = Float(duration) / configuration.audioMessageMaxDuration
        
        // 最大宽度的 4/5 吧
        let maxWidth = 4 * getContentMaxWidth(configuration: configuration) / 5
        let minWidth = configuration.audioMessageBubbleMinWidth
        
        var bubbleWidth = maxWidth * CGFloat(durationRatio)
        
        if bubbleWidth > maxWidth {
            bubbleWidth = maxWidth
        }
        else if bubbleWidth < minWidth {
            bubbleWidth = minWidth
        }
        
        if bubbleWidth != bubbleWidthConstraint.constant {
            bubbleWidthConstraint.constant = bubbleWidth
            setNeedsLayout()
        }
        
        if message.status == .sendSuccess {
            durationView.isHidden = false
            unitView.isHidden = false
        }
        else {
            durationView.isHidden = true
            unitView.isHidden = true
        }

        if audioMessage.status == .sendIng {
            spinnerView.startAnimating()
        }
        else {
            spinnerView.stopAnimating()
        }
        
        failureView.isHidden = audioMessage.status != .sendFailure
        
    }
    
    @objc func onBubbleClick() {
        
        if isPlaying {
            animationView.stopAnimating()
        }
        else {
            animationView.startAnimating()
        }
        
        isPlaying = !isPlaying
        
    }
    
}
