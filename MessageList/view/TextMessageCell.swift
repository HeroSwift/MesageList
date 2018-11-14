
import UIKit

class TextMessageCell: MessageCell {
    
    var nameView = UILabel()
    
    var avatarView = UIImageView()
    
    var textView = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        nameView.numberOfLines = 1
        nameView.lineBreakMode = .byTruncatingTail
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.backgroundColor = .blue
        
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(avatarView)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .blue
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
        
        configuration.loadImage(imageView: avatarView, url: textMessage.user.avatar)
        
        textView.text = textMessage.text
        textView.sizeToFit()
        
    }
    
}
