
import UIKit

class AudioMessageCell: MessageCell {
    
    var timeView = InsetLabel()
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()
    
    var bubbleView = UIButton()
    
    var animationView = UIImageView()
    
    var durationView = UILabel()
    
    var unitView = UILabel()
    
    var bubbleWidthConstraint: NSLayoutConstraint!
    var avatarTopConstraint: NSLayoutConstraint!
    
    var loadingView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    var spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    var failureView = UIButton()
    
    private var url = ""
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        // 时间
        timeView.isHidden = true
        timeView.numberOfLines = 1
        timeView.textAlignment = .center
        timeView.font = configuration.timeTextFont
        timeView.textColor = configuration.timeTextColor
        timeView.backgroundColor = configuration.timeBackgroundColor
        timeView.contentInsets = UIEdgeInsetsMake(
            configuration.timePaddingVertical,
            configuration.timePaddingHorizontal,
            configuration.timePaddingVertical,
            configuration.timePaddingHorizontal
        )
        if configuration.timeBorderRadius > 0 {
            timeView.clipsToBounds = true
            timeView.layer.cornerRadius = configuration.timeBorderRadius
        }
        timeView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(timeView)
        
        // 头像
        if configuration.userAvatarBorderRadius > 0 {
            avatarView.clipsToBounds = true
            avatarView.layer.cornerRadius = configuration.userAvatarBorderRadius
        }
        if configuration.userAvatarBorderWidth > 0 {
            avatarView.layer.borderWidth = configuration.userAvatarBorderWidth
            avatarView.layer.borderColor = configuration.userAvatarBorderColor.cgColor
        }
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
        
        // loading icon
        loadingView.isHidden = true
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(loadingView)
        
        // spinner icon
        spinnerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(spinnerView)
        
        // failure icon
        failureView.translatesAutoresizingMaskIntoConstraints = false
        failureView.setBackgroundImage(configuration.messageFailureIconNormal, for: .normal)
        failureView.setBackgroundImage(configuration.messageFailureIconPressed, for: .highlighted)
        contentView.addSubview(failureView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        addClickHandler(view: bubbleView, selector: #selector(onBubbleClick))
        addClickHandler(view: failureView, selector: #selector(onFailureClick))
        addLongPressHandler(view: bubbleView, selector: #selector(onContentLongPress))
        
        bubbleWidthConstraint = NSLayoutConstraint(item: bubbleView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 0)
        avatarTopConstraint = NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            bubbleWidthConstraint,
            avatarTopConstraint,
        ])
        
        AudioPlayer.sharedInstance.addListener(listener: self)
        
    }
    
    override func update(configuration: MessageListConfiguration) {
        
        let audioMessage = message as! AudioMessage

        configuration.loadImage(imageView: avatarView, url: message.user.avatar)
        
        nameView.text = message.user.name
        nameView.sizeToFit()
        
        updateContentSize(configuration: configuration, duration: audioMessage.duration)
        
        if message.status == .sendSuccess {
            durationView.text = "\(audioMessage.duration)"
            durationView.sizeToFit()
            
            durationView.isHidden = false
            unitView.isHidden = false
        }
        else {
            durationView.isHidden = true
            unitView.isHidden = true
        }

        showStatusView(spinnerView: spinnerView, failureView: failureView)
        
        avatarTopConstraint = showTimeView(timeView: timeView, time: message.time, avatarView: avatarView, avatarTopConstraint: avatarTopConstraint, marginTop: configuration.messagePaddingVertical)
        
        url = audioMessage.url
        
        // 把动画状态同步回来
        if AudioPlayer.sharedInstance.isPlaying(url: url) {
            playAnimation()
        }
        else {
            stopAnimation()
        }
        
    }
    
    private func updateContentSize(configuration: MessageListConfiguration, duration: Int) {
        
        let durationRatio = Float(duration) / configuration.audioMessageMaxDuration
        
        let maxWidth = configuration.audioMessageMaxRatio * getContentMaxWidth(configuration: configuration)
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
        
    }
    
    private func playAnimation() {
        animationView.startAnimating()
    }
    
    private func stopAnimation() {
        animationView.stopAnimating()
    }
    
    private func showLoading() {
        loadingView.isHidden = false
        animationView.isHidden = true
    }
    
    private func hideLoading() {
        loadingView.isHidden = true
        animationView.isHidden = false
    }
    
    @objc func onBubbleClick() {
        let player = AudioPlayer.sharedInstance
        if player.isPlaying(url: url) {
            player.stop()
        }
        else {
            player.play(url: url)
        }
        delegate.messageListDidClickContent(message: message)
    }
    
}

extension AudioMessageCell: AudioPlayerDelegate {
    
    func audioPlayerDidLoad(url: String) {
        showLoading()
    }
    
    func audioPlayerDidPlay(url: String) {
        if url == self.url {
            hideLoading()
            playAnimation()
        }
    }
    
    func audioPlayerDidStop(url: String) {
        if url == self.url {
            hideLoading()
            stopAnimation()
        }
    }
    
}

