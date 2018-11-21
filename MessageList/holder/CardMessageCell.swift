
import UIKit

class CardMessageCell: MessageCell {
    
    var timeView = InsetLabel()
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()
    
    var bubbleView = UIButton()
    
    var thumbnailView = UIImageView()
    var titleView = UILabel()
    var descView = UILabel()
    var dividerView = UIView()
    var typeView = UILabel()

    var avatarTopConstraint: NSLayoutConstraint!
    
    var spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    var failureView = UIButton()
    
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
        
        // 缩略图
        if configuration.cardMessageThumbnailBorderRadius > 0 {
            thumbnailView.clipsToBounds = true
            thumbnailView.layer.cornerRadius = configuration.cardMessageThumbnailBorderRadius
        }
        thumbnailView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(thumbnailView)
        
        // 标题
        titleView.numberOfLines = 1
        titleView.lineBreakMode = .byTruncatingTail
        titleView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleView)
        
        // 描述
        descView.numberOfLines = 1
        descView.lineBreakMode = .byTruncatingTail
        descView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(descView)
        
        // 分割线
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dividerView)
        
        // 类型
        typeView.numberOfLines = 1
        typeView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(typeView)
        
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
        addClickHandler(view: bubbleView, selector: #selector(onContentClick))
        addClickHandler(view: failureView, selector: #selector(onFailureClick))
        addLongPressHandler(view: bubbleView, selector: #selector(onContentLongPress))
        
        avatarTopConstraint = NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            avatarTopConstraint
        ])
        
    }
    
    override func update(configuration: MessageListConfiguration) {
        
        let cardMessage = message as! CardMessage
        
        configuration.loadImage(imageView: avatarView, url: message.user.avatar)
        
        nameView.text = message.user.name
        nameView.sizeToFit()
        
        configuration.loadImage(imageView: thumbnailView, url: cardMessage.thumbnail)
        
        titleView.text = cardMessage.title
        titleView.sizeToFit()
        
        descView.text = cardMessage.desc
        descView.sizeToFit()
        
        typeView.text = cardMessage.type
        typeView.sizeToFit()
        
        showStatusView(spinnerView: spinnerView, failureView: failureView)
        
        avatarTopConstraint = showTimeView(timeView: timeView, time: message.time, avatarView: avatarView, avatarTopConstraint: avatarTopConstraint, marginTop: configuration.messageMarginTop)
        
    }
    
}
