//
//  IAMPopup.swift
//  IAMPopup
//
//  Created by camosss on 01/16/2022.
//  Copyright (c) 2022 camosss. All rights reserved.
//

import UIKit

public struct IAMPopupManager {
    
    public static let shared = IAMPopupManager()
    
    let screenSize = UIScreen.main.bounds.size

    var containerView =  UIView()
    var slideView = UIView()
}

@available(iOS 13.0, *)
public extension UIView {

    // MARK: - Top_Popup
    
    func IAM_top(height: CGFloat, completion: @escaping () -> Void) {
        let IAMPopup = IAMPopupManager.shared

        slideViewUp(action: #selector(top_slideViewDown(height:)),
                    maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner],
                    before_slideUpView_frame: CGRect(x: 15,
                                                     y: -height,
                                                     width: IAMPopup.screenSize.width - 30,
                                                     height: height),
                    after_slideUpView_frame: CGRect(x: 15,
                                                    y: 40,
                                                    width: IAMPopup.screenSize.width - 30,
                                                    height: height),
                    configure_SlideView_UI: completion)
    }
    
    @objc
    private func top_slideViewDown(height: CGFloat) {
        let IAMPopup = IAMPopupManager.shared

        slideViewDown(slideDowmView_frame: CGRect(x: 15,
                                                  y: -height,
                                                  width: IAMPopup.screenSize.width - 30,
                                                  height: height))
    }
    
    // MARK: - Center_Popup
    
    func IAM_center(height: CGFloat, completion: @escaping () -> Void) {
        let IAMPopup = IAMPopupManager.shared

        slideViewUp(action: #selector(center_slideViewDown),
                    maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner],
                    before_slideUpView_frame: CGRect(x: -(IAMPopup.screenSize.width - 100),
                                                     y: IAMPopup.screenSize.height / 4,
                                                     width: 0,
                                                     height: 0),
                    after_slideUpView_frame: CGRect(x: 50,
                                                    y: IAMPopup.screenSize.height / 4,
                                                    width: IAMPopup.screenSize.width - 100,
                                                    height: height),
                    configure_SlideView_UI: completion)
    }
    
    
    @objc
    private func center_slideViewDown(height: CGFloat) {
        let IAMPopup = IAMPopupManager.shared

        slideViewDown(slideDowmView_frame: CGRect(x: -(IAMPopup.screenSize.width - 100),
                                                  y: IAMPopup.screenSize.height / 4,
                                                  width: 0,
                                                  height: 0))
    }
    
    // MARK: - Bottom_Popup
    
    func IAM_bottom(height: CGFloat, completion: @escaping () -> Void) {
        let IAMPopup = IAMPopupManager.shared

        slideViewUp(action: #selector(bottom_slideViewDown(height:)),
                    maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner],
                    before_slideUpView_frame: CGRect(x: 0,
                                                     y: IAMPopup.screenSize.height,
                                                     width: IAMPopup.screenSize.width,
                                                     height: height),
                    after_slideUpView_frame: CGRect(x: 0,
                                                    y: IAMPopup.screenSize.height - height,
                                                    width: IAMPopup.screenSize.width,
                                                    height: height),
                    configure_SlideView_UI: completion)
    }
    
    @objc
    private func bottom_slideViewDown(height: CGFloat) {
        let IAMPopup = IAMPopupManager.shared

        slideViewDown(slideDowmView_frame: CGRect(x: 0,
                                                  y: IAMPopup.screenSize.height,
                                                  width: IAMPopup.screenSize.width,
                                                  height: height))
    }
    
    // MARK: - Reuse Method
    
    private func slideViewUp(action: Selector?, maskedCorners: CACornerMask, before_slideUpView_frame: CGRect, after_slideUpView_frame: CGRect, configure_SlideView_UI: @escaping () -> ()) {
        let IAMPopup = IAMPopupManager.shared
        
        addSubview(IAMPopup.containerView)
        IAMPopup.containerView.frame = self.frame
        IAMPopup.containerView.backgroundColor = UIColor.black.withAlphaComponent(0.9)

        let tapGesture = UITapGestureRecognizer(target: self, action: action)
        IAMPopup.containerView.addGestureRecognizer(tapGesture)
        IAMPopup.containerView.alpha = 0

        addSubview(IAMPopup.slideView)
        IAMPopup.slideView.backgroundColor = .systemGray6
        IAMPopup.slideView.layer.cornerRadius = 10
        IAMPopup.slideView.layer.maskedCorners = maskedCorners
        IAMPopup.slideView.frame = before_slideUpView_frame
        
        UIView.animate(withDuration: 0.5,
                       delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 1.0,
                       options: .curveEaseInOut,
                       animations: {
            IAMPopup.containerView.alpha = 0.5
            IAMPopup.slideView.frame = after_slideUpView_frame
            configure_SlideView_UI()
        }, completion: nil)
    }
    
    private func slideViewDown(slideDowmView_frame: CGRect) {
        let IAMPopup = IAMPopupManager.shared

        UIView.animate(withDuration: 0.5,
                       delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 1.0,
                       options: .curveEaseInOut,
                       animations: {
            IAMPopup.containerView.alpha = 0
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 1.0,
                       options: .curveEaseInOut,
                       animations: {
            IAMPopup.containerView.alpha = 0
            IAMPopup.slideView.frame = slideDowmView_frame
        }, completion: nil)
    }
}
