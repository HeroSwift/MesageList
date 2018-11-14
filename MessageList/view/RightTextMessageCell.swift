
import UIKit

class RightTextMessageCell: TextMessageCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        super.create(configuration: configuration)
        
        textView.font = configuration.rightTextMessageTextFont
        textView.textColor = configuration.rightTextMessageTextColor
        textView.textAlignment = .right
        
        // 约束布局
        let rightEdge = configuration.userAvatarWidth + configuration.leftUserNameMarginLeft
        
        if configuration.rightUserNameVisible {
            
            nameView.font = configuration.rightUserNameTextFont
            nameView.textColor = configuration.rightUserNameTextColor
            nameView.textAlignment = .right
            
            contentView.addSubview(nameView)
            addClickHandler(view: nameView, selector: #selector(onUserNameClick))
            
            contentView.addConstraints([
                
                NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: avatarView, attribute: .right, relatedBy: .equal, toItem: contentView, attribute: .right, multiplier: 1, constant: 0),
                
                NSLayoutConstraint(item: nameView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: nameView, attribute: .right, relatedBy: .equal, toItem: avatarView, attribute: .left, multiplier: 1, constant: -configuration.rightUserNameMarginRight),
                NSLayoutConstraint(item: nameView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: rightEdge),
                
                NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: nameView, attribute: .bottom, multiplier: 1, constant: configuration.rightUserNameMarginBottom),
                NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: textView, attribute: .right, relatedBy: .equal, toItem: avatarView, attribute: .left, multiplier: 1, constant: -configuration.rightTextMessageMarginRight),
                NSLayoutConstraint(item: textView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: rightEdge),
                
            ])
            
        }
        else {
            contentView.addConstraints([
                
                NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: avatarView, attribute: .right, relatedBy: .equal, toItem: contentView, attribute: .right, multiplier: 1, constant: 0),
                
                NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .bottom, multiplier: 1, constant: configuration.rightUserNameMarginBottom),
                NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: textView, attribute: .right, relatedBy: .equal, toItem: avatarView, attribute: .left, multiplier: 1, constant: -configuration.rightTextMessageMarginRight),
                NSLayoutConstraint(item: textView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: rightEdge),
                
            ])
        }
        
    }
    
}
