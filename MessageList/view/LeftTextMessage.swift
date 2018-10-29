
import UIKit

class LeftTextMessage: UITableViewCell {
    
    static let identifier = "LeftTextMessage"
    
    private let nameView: UILabel
    
    private let avatarView: UIImageView
    
    private let textView: UILabel
    
    init(configuration: MessageListConfiguration) {
        
        self.init()
        
        nameView = UILabel()
        nameView.font = configuration.leftUserNameTextFont
        nameView.textColor = configuration.leftUserNameTextColor
        nameView.numberOfLines = 1
        nameView.lineBreakMode = .byTruncatingTail
        nameView.textAlignment = .left
        nameView.translatesAutoresizingMaskIntoConstraints = false
        
        avatarView = UIImageView()
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        
        textView = UILabel()
        textView.font = configuration.leftTextMessageTextFont
        textView.textColor = configuration.leftUserNameTextColor
        textView.textAlignment = .left
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(nameView)
        addSubview(avatarView)
        addSubview(textView)
        
        let rightEdge = configuration.messagePaddingHorizontal + configuration.userAvatarWidth + configuration.rightUserNameMarginRight
        
        addConstraints([
            NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: configuration.messagePaddingVertical),
            NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: configuration.messagePaddingHorizontal),
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),
            
            NSLayoutConstraint(item: nameView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: nameView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: configuration.leftUserNameMarginLeft),
            NSLayoutConstraint(item: nameView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: -rightEdge),
            
            NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: nameView, attribute: .bottom, multiplier: 1, constant: configuration.leftUserNameMarginBottom),
            NSLayoutConstraint(item: textView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: textView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: -rightEdge),
            NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: -configuration.messagePaddingVertical),
        ])
    }
    
    func update(textMessage: TextMessage) {
        
        nameView.text = textMessage.from.name
        nameView.sizeToFit()
        
        textView.text = textMessage.text
        textView.sizeToFit()
        
    }
    
}
