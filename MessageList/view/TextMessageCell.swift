
import UIKit

class TextMessageCell: MessageCell {
    
    var nameView = UILabel()
    
    var avatarView = UIImageView()
    
    var bubbleView = UIImageView()
    
    var textView = UILabel()
    
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
        nameView.lineBreakMode = .byTruncatingTail
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.backgroundColor = .gray

        // 气泡
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(bubbleView)
        
        // 不限定行数
        textView.numberOfLines = 0
        textView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(textView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        addClickHandler(view: textView, selector: #selector(onContentClick))
        addLongPressHandler(view: textView, selector: #selector(onContentLongPress))
        
        contentView.addConstraints([
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),
        ])
        
    }
    
    override func update(configuration: MessageListConfiguration, message: Message) {
        
        let textMessage = message as! TextMessage
        
        nameView.text = textMessage.user.name
        nameView.sizeToFit()
        
        textView.text = textMessage.text
        textView.sizeToFit()
        
        let avatar = textMessage.user.avatar
        if avatar != "" {
            configuration.loadImage(imageView: avatarView, url: avatar)
        }
        
    }
    
}
