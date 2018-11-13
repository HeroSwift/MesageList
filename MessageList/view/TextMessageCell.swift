
import UIKit

class TextMessageCell: MessageCell {
    
    var nameView = UILabel()
    
    var avatarView: UIImageView
    
    var textView: UILabel
    
    convenience init() {
        self.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        
        nameView.numberOfLines = 1
        nameView.lineBreakMode = .byTruncatingTail
        nameView.translatesAutoresizingMaskIntoConstraints = false
        
        avatarView = UIImageView()
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(avatarView)
        
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        
        textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textView)
        
        addClickHandler(view: textView, selector: #selector(onContentClick))
        addLongPressHandler(view: textView, selector: #selector(onContentLongPress))
        
        // 左侧、右侧消息自己负责布局
        layout(configuration: configuration)
        
    }
    
    override func update(message: Message) {
        
        let textMessage = message as! TextMessage
        
        nameView.text = textMessage.user.name
        nameView.sizeToFit()
        
        textView.text = textMessage.text
        textView.sizeToFit()
        
    }
    
    func layout(configuration: MessageListConfiguration) {
        
    }
    
}
