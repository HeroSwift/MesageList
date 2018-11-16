
import UIKit

class LeftTextMessageCell: TextMessageCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        super.create(configuration: configuration)
        
        bubbleView.image = configuration.leftTextMessageBubbleImage
        
        textView.font = configuration.leftTextMessageTextFont
        textView.textColor = configuration.leftTextMessageTextColor
        
        // 限定最大宽度
        textView.preferredMaxLayoutWidth = getContentMaxWidth(configuration: configuration) - configuration.leftTextMessagePaddingLeft - configuration.leftTextMessagePaddingRight
        
        contentView.addConstraints([
            
            NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: configuration.messagePaddingVertical),
            NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: configuration.messagePaddingHorizontal),
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),

            // 用 textView 确定气泡尺寸
            NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: -configuration.messagePaddingVertical - configuration.leftTextMessagePaddingBottom),
            NSLayoutConstraint(item: textView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: configuration.leftTextMessageMarginLeft + configuration.leftTextMessagePaddingLeft),
            
            // textview 尺寸确定了之后，气泡依附它
            NSLayoutConstraint(item: bubbleView, attribute: .top, relatedBy: .equal, toItem: textView, attribute: .top, multiplier: 1, constant: -configuration.leftTextMessagePaddingTop),
            NSLayoutConstraint(item: bubbleView, attribute: .bottom, relatedBy: .equal, toItem: textView, attribute: .bottom, multiplier: 1, constant: configuration.leftTextMessagePaddingBottom),
            NSLayoutConstraint(item: bubbleView, attribute: .left, relatedBy: .equal, toItem: textView, attribute: .left, multiplier: 1, constant: -configuration.leftTextMessagePaddingLeft),
            NSLayoutConstraint(item: bubbleView, attribute: .right, relatedBy: .equal, toItem: textView, attribute: .right, multiplier: 1, constant: configuration.leftTextMessagePaddingRight),
            
            NSLayoutConstraint(item: spinnerView, attribute: .left, relatedBy: .equal, toItem: bubbleView, attribute: .right, multiplier: 1, constant: configuration.leftStatusIconMarginLeft),
            NSLayoutConstraint(item: spinnerView, attribute: .bottom, relatedBy: .equal, toItem: bubbleView, attribute: .bottom, multiplier: 1, constant: -configuration.leftStatusIconMarginBottom),
            
            NSLayoutConstraint(item: failureView, attribute: .left, relatedBy: .equal, toItem: bubbleView, attribute: .right, multiplier: 1, constant: configuration.leftStatusIconMarginLeft),
            NSLayoutConstraint(item: failureView, attribute: .bottom, relatedBy: .equal, toItem: bubbleView, attribute: .bottom, multiplier: 1, constant: -configuration.leftStatusIconMarginBottom),
            
        ])
        
        if configuration.leftUserNameVisible {
            
            nameView.font = configuration.leftUserNameTextFont
            nameView.textColor = configuration.leftUserNameTextColor
            nameView.textAlignment = .left
            
            contentView.addSubview(nameView)
            addClickHandler(view: nameView, selector: #selector(onUserNameClick))
            
            contentView.addConstraints([
                
                NSLayoutConstraint(item: nameView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: nameView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: configuration.leftUserNameMarginLeft),

                NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: nameView, attribute: .bottom, multiplier: 1, constant: configuration.leftUserNameMarginBottom + configuration.leftTextMessagePaddingTop),

            ])
            
        }
        else {
            contentView.addConstraints([

                NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: configuration.leftTextMessagePaddingTop),

            ])
        }
        
    }
    
}
