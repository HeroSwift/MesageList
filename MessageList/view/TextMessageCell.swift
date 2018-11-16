
import UIKit

class TextMessageCell: MessageCell {
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()

    var bubbleView = UIImageView()
    
    var textView = UILabel()
    
    var spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    var failureView = UIImageView()
    
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
        
        // 居左对齐
        textView.textAlignment = .left
        // 不限定行数
        textView.numberOfLines = 0
        textView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(textView)
        
        // spinner icon
        spinnerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(spinnerView)
        
        // failure icon
        failureView.translatesAutoresizingMaskIntoConstraints = false
        failureView.image = configuration.messageFailureIcon
        contentView.addSubview(failureView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        addClickHandler(view: textView, selector: #selector(onContentClick))
        addClickHandler(view: spinnerView, selector: #selector(onSpinnerIconClick))
        addClickHandler(view: failureView, selector: #selector(onFailureIconClick))
        addLongPressHandler(view: textView, selector: #selector(onContentLongPress))
        
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
        textView.sizeToFit()

        if message.status == .sendIng {
            spinnerView.startAnimating()
        }
        else {
            spinnerView.stopAnimating()
        }
        
        failureView.isHidden = message.status != .sendFailure
        
    }
    
}
