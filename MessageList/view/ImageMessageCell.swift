
import UIKit

class ImageMessageCell: MessageCell {
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()
    
    // imageView 被占用了
    var photoView = UIImageView()
    
    var photoViewWidthConstraint: NSLayoutConstraint!
    var photoViewHeightConstraint: NSLayoutConstraint!

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
        
        // 图片
        photoView.clipsToBounds = true
        photoView.layer.cornerRadius = configuration.imageMessageBorderRadius
        photoView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(photoView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        addClickHandler(view: photoView, selector: #selector(onContentClick))
        addLongPressHandler(view: photoView, selector: #selector(onContentLongPress))
        
        photoViewWidthConstraint = NSLayoutConstraint(item: photoView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 0)
        photoViewHeightConstraint = NSLayoutConstraint(item: photoView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),
            photoViewWidthConstraint,
            photoViewHeightConstraint
        ])
        
    }
    
    override func update(configuration: MessageListConfiguration, message: Message) {
        
        let imageMessage = message as! ImageMessage
        
        nameView.text = imageMessage.user.name
        nameView.sizeToFit()
        
        let url = imageMessage.url
        if url != "" {
            configuration.loadImage(imageView: photoView, url: url)
            photoViewWidthConstraint.constant = CGFloat(imageMessage.width)
            photoViewHeightConstraint.constant = CGFloat(imageMessage.height)
            layoutIfNeeded()
        }
        
        let avatar = imageMessage.user.avatar
        if avatar != "" {
            configuration.loadImage(imageView: avatarView, url: avatar)
        }
        
    }
    
}
