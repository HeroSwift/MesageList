
import UIKit

class LeftFileMessageCell: FileMessageCell {
    
    override func create() {
        
        super.create()
        
        bubbleView.setBackgroundImage(configuration.leftFileMessageBubbleImageNormal, for: .normal)
        bubbleView.setBackgroundImage(configuration.leftFileMessageBubbleImagePressed, for: .selected)
        bubbleView.setBackgroundImage(configuration.leftFileMessageBubbleImagePressed, for: .highlighted)
        
        titleView.font = configuration.leftFileMessageTitleTextFont
        titleView.textColor = configuration.leftFileMessageTitleTextColor
        
        descView.font = configuration.leftFileMessageDescTextFont
        descView.textColor = configuration.leftFileMessageDescTextColor

        contentView.addConstraints([
            
            NSLayoutConstraint(item: timeView, attribute: .centerX, relatedBy: .equal, toItem: contentView, attribute: .centerX, multiplier: 1, constant: 0),
            
            NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: configuration.messagePaddingHorizontal),
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),
            
            NSLayoutConstraint(item: bubbleView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: configuration.leftFileMessageMarginLeft),
            NSLayoutConstraint(item: bubbleView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.fileMessageBubbleWidth),
            
            NSLayoutConstraint(item: typeView, attribute: .top, relatedBy: .equal, toItem: bubbleView, attribute: .top, multiplier: 1, constant: configuration.leftFileMessageTypeMarginTop),
            NSLayoutConstraint(item: typeView, attribute: .left, relatedBy: .equal, toItem: bubbleView, attribute: .left, multiplier: 1, constant: configuration.leftFileMessageTypeMarginLeft),
            NSLayoutConstraint(item: typeView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.fileMessageTypeWidth),
            NSLayoutConstraint(item: typeView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.fileMessageTypeHeight),
            NSLayoutConstraint(item: typeView, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: bubbleView, attribute: .bottom, multiplier: 1, constant: -configuration.leftFileMessageTypeMarginBottom),

            NSLayoutConstraint(item: titleView, attribute: .left, relatedBy: .equal, toItem: typeView, attribute: .right, multiplier: 1, constant: configuration.leftFileMessageTitleMarginLeft),
            NSLayoutConstraint(item: titleView, attribute: .top, relatedBy: .equal, toItem: bubbleView, attribute: .top, multiplier: 1, constant: configuration.leftFileMessageTitleMarginTop),
            NSLayoutConstraint(item: titleView, attribute: .right, relatedBy: .equal, toItem: bubbleView, attribute: .right, multiplier: 1, constant: -configuration.leftFileMessageTitleMarginRight),
            
            NSLayoutConstraint(item: descView, attribute: .left, relatedBy: .equal, toItem: typeView, attribute: .right, multiplier: 1, constant: configuration.leftFileMessageDescMarginLeft),
            NSLayoutConstraint(item: descView, attribute: .top, relatedBy: .equal, toItem: titleView, attribute: .bottom, multiplier: 1, constant: configuration.leftFileMessageDescMarginTop),
            NSLayoutConstraint(item: descView, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: bubbleView, attribute: .bottom, multiplier: 1, constant: -configuration.leftFileMessageDescMarginBottom),
            
            NSLayoutConstraint(item: spinnerView, attribute: .left, relatedBy: .equal, toItem: bubbleView, attribute: .right, multiplier: 1, constant: configuration.leftStatusViewMarginLeft),
            NSLayoutConstraint(item: spinnerView, attribute: .bottom, relatedBy: .equal, toItem: bubbleView, attribute: .bottom, multiplier: 1, constant: -configuration.leftStatusViewMarginBottom),
            
            NSLayoutConstraint(item: failureView, attribute: .left, relatedBy: .equal, toItem: bubbleView, attribute: .right, multiplier: 1, constant: configuration.leftStatusViewMarginLeft),
            NSLayoutConstraint(item: failureView, attribute: .bottom, relatedBy: .equal, toItem: bubbleView, attribute: .bottom, multiplier: 1, constant: -configuration.leftStatusViewMarginBottom),
            
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
                NSLayoutConstraint(item: nameView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: getContentMaxWidth()),
                
                NSLayoutConstraint(item: bubbleView, attribute: .top, relatedBy: .equal, toItem: nameView, attribute: .bottom, multiplier: 1, constant: configuration.leftUserNameMarginBottom),
                
            ])
            
        }
        else {
            contentView.addConstraints([
                
                NSLayoutConstraint(item: bubbleView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
                
            ])
        }
        
    }
    
}
