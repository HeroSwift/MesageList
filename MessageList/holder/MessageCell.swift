

import UIKit

class MessageCell: UITableViewCell {
    
    var isReady = false
    
    var delegate: MessageListDelegate!
    var message: Message!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(configuration: MessageListConfiguration, delegate: MessageListDelegate, message: Message) {
        
        self.delegate = delegate
        self.message = message
        
        if !isReady {
            isReady = true
            selectionStyle = .none
            backgroundColor = .clear
            create(configuration: configuration)
        }
        
        update(configuration: configuration)
        
    }
    
    func create(configuration: MessageListConfiguration) {
        
    }
    
    func update(configuration: MessageListConfiguration) {
        
    }
    
    func updateImageSize(configuration: MessageListConfiguration, width: Int, height: Int, widthConstraint: NSLayoutConstraint, heightConstraint: NSLayoutConstraint) {
        
        var imageWidth = CGFloat(width)
        var imageHeight = CGFloat(height)
        let imageRatio = imageWidth / imageHeight
        
        // 简单限制下最大和最小尺寸
        // 剩下的外部自由发挥
        let maxWidth = getContentMaxWidth(configuration: configuration)

        if imageWidth > maxWidth {
            imageWidth = maxWidth
            imageHeight = imageWidth / imageRatio
        }
        
        if imageHeight < configuration.userAvatarHeight {
            imageHeight = configuration.userAvatarHeight
            imageWidth = imageHeight * imageRatio
        }
        
        widthConstraint.constant = imageWidth
        heightConstraint.constant = imageHeight
        
        setNeedsLayout()
        
        
    }
    
    func showTimeView(timeView: UILabel, time: String, avatarView: UIView, avatarTopConstraint: NSLayoutConstraint, marginTop: CGFloat) -> NSLayoutConstraint {
        
        let isHidden = timeView.isHidden
        
        if time != "" {
            timeView.text = time
            timeView.sizeToFit()
            timeView.isHidden = false
        }
        else {
            timeView.isHidden = true
        }
        
        // 更新头像的 top
        // 当没有时间时，头像置顶
        var constraint = avatarTopConstraint
        
        if isHidden != timeView.isHidden {
            contentView.removeConstraint(constraint)
            if isHidden {
                constraint = NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: timeView, attribute: .bottom, multiplier: 1, constant: marginTop)
            }
            else {
                constraint = NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0)
            }
            contentView.addConstraint(constraint)
        }
        
        return constraint
        
    }
    
    func showStatusView(spinnerView: UIActivityIndicatorView, failureView: UIView) {
        
        if message.status == .sendIng {
            spinnerView.startAnimating()
        }
        else {
            spinnerView.stopAnimating()
        }
        
        failureView.isHidden = message.status != .sendFailure
        
    }
    
    func getContentMaxWidth(configuration: MessageListConfiguration) -> CGFloat {
        
        let screenWidth = UIScreen.main.bounds.size.width
        
        return screenWidth - 2 * (configuration.messagePaddingHorizontal + configuration.userAvatarWidth) - configuration.leftUserNameMarginLeft - configuration.rightUserNameMarginRight
        
    }
    
    func addClickHandler(view: UIView, selector: Selector) {
        
        view.isUserInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: selector)
        gesture.numberOfTapsRequired = 1
        
        view.addGestureRecognizer(gesture)
        
    }
    
    func addLongPressHandler(view: UIView, selector: Selector) {
        
        view.isUserInteractionEnabled = true
        
        let gesture = UILongPressGestureRecognizer(target: self, action: selector)
        gesture.numberOfTapsRequired = 1
        
        view.addGestureRecognizer(gesture)
        
    }
    
    @objc func onMessageClick() {
        delegate.messageListDidClickMessage(message: message)
    }
    
    @objc func onUserNameClick() {
        delegate.messageListDidClickUserName(message: message)
    }
    
    @objc func onUserAvatarClick() {
        delegate.messageListDidClickUserAvatar(message: message)
    }
    
    @objc func onContentClick() {
        delegate.messageListDidClickContent(message: message)
    }
    
    @objc func onContentLongPress() {
        delegate.messageListDidLongPressContent(message: message)
    }
    
    @objc func onFailureClick() {
        delegate.messageListDidClickFailure(message: message)
    }
    
}
