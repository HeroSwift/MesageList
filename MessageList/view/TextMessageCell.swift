
import UIKit

class TextMessageCell: MessageCell {
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()

    var bubbleView = UIImageView()
    
    var textView = UITextView()
    
    var textWidthConstraint: NSLayoutConstraint!
    var textHeightConstraint: NSLayoutConstraint!
    
    var spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    var failureView = UIButton()
    
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
        
        // 文本内容
        textView.isEditable = false
        textView.textAlignment = .left
        textView.backgroundColor = .gray
        textView.isScrollEnabled = false
        textView.contentInset = UIEdgeInsetsMake(0, -5, 0, 0)
        textView.textContainerInset = UIEdgeInsetsMake(0, 0, 0, 0)
        textView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(textView)
        
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
        addClickHandler(view: textView, selector: #selector(onContentClick))
        addClickHandler(view: failureView, selector: #selector(onFailureIconClick))
        addLongPressHandler(view: textView, selector: #selector(onContentLongPress))
        
        textWidthConstraint = NSLayoutConstraint(item: textView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 0)
        textHeightConstraint = NSLayoutConstraint(item: textView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            textWidthConstraint,
            textHeightConstraint
        ])
        
    }
    
    override func update(configuration: MessageListConfiguration, message: Message) {
        
        let textMessage = message as! TextMessage
        
        let avatar = message.user.avatar
        if avatar != "" {
            configuration.loadImage(imageView: avatarView, url: avatar)
        }
        
        nameView.text = message.user.name
        nameView.sizeToFit()
 
        textView.text = textMessage.text
        autoTextSize(configuration: configuration)

        if message.status == .sendIng {
            spinnerView.startAnimating()
        }
        else {
            spinnerView.stopAnimating()
        }
        
        failureView.isHidden = message.status != .sendFailure
        
    }
    
    private func autoTextSize(configuration: MessageListConfiguration) {
        
        let fixedWidth = textView.frame.size.width
        var newSize = textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        
        // 算出自适应后的宽度
        let maxWidth = getContentMaxWidth(configuration: configuration)
        let width = min(maxWidth, max(newSize.width, fixedWidth))
        
        newSize = textView.sizeThatFits(CGSize(width: width, height: CGFloat.greatestFiniteMagnitude))
        
        textWidthConstraint.constant = width
        textHeightConstraint.constant = newSize.height
        
        setNeedsLayout()
        
    }
    
}
