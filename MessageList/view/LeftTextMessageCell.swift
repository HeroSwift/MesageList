
import UIKit

class LeftTextMessageCell: TextMessageCell {
    
    convenience init() {
        self.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layout(configuration: MessageListConfiguration) {
        
        if configuration.leftUserNameVisible {
            nameView.font = configuration.leftUserNameTextFont
            nameView.textColor = configuration.leftUserNameTextColor
            nameView.textAlignment = .left
            addSubview(nameView)
            addClickHandler(view: nameView, selector: #selector(onUserNameClick))
        }
        
        textView.font = configuration.leftTextMessageTextFont
        textView.textColor = configuration.leftUserNameTextColor
        textView.textAlignment = .left
        
        // 约束布局
        let rightEdge = configuration.messagePaddingHorizontal + configuration.userAvatarWidth + configuration.rightUserNameMarginRight
        
        addConstraints([
            NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: configuration.messagePaddingVertical),
            NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: configuration.messagePaddingHorizontal),
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),
            
            NSLayoutConstraint(item: textView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: textView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: -rightEdge),
            NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: -configuration.messagePaddingVertical),
        ])
        
        if configuration.leftUserNameVisible {
            addConstraints([
                NSLayoutConstraint(item: nameView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: nameView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: configuration.leftUserNameMarginLeft),
                NSLayoutConstraint(item: nameView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: -rightEdge),
                
                NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: nameView, attribute: .bottom, multiplier: 1, constant: configuration.leftUserNameMarginBottom),
            ])
        }
        else {
            addConstraints([
                NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
            ])
        }
        
    }
    
}
