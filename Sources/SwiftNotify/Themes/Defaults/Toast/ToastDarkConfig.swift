//
// Created by Johnny Choi on 5/3/2022.
// Copyright (c) 2022 Johnny Tsoi@JT501. All rights reserved.
//

import Foundation

public struct ToastDarkConfig: ThemeConfig {
    public var bodyTextColor: UIColor = .white
    public var bodyTextFont: UIFont = .systemFont(ofSize: 13, weight: UIFont.Weight.regular)
    public var bodyBackgroundColor: UIColor = .clear
    public var bodyTextAlignment: NSTextAlignment = .left
    public var iconViewWidth: CGFloat = 50
    public var iconViewHeight: CGFloat = 50
    public var iconViewContentMode: UIView.ContentMode = .scaleAspectFit
    public var iconViewCornerRadius: CGFloat = 25
    public var iconImageTintColor: UIColor? = nil
    public var cornerRadius: CGFloat = 10
    public var padding: CGFloat = 10
    public var levelConfigs: [NoticeLevels: LevelConfig] = [
        .success: Success(),
        .fail: Fail(),
        .info: Info(),
        .warning: Warning()
    ]

    public init() {}

    public struct Success: LevelConfig {
        public var backgroundColor: UIColor? = DefaultColors.SuccessDark

        public init() {}
    }

    public struct Fail: LevelConfig {
        public var backgroundColor: UIColor? = DefaultColors.FailDark

        public init() {}
    }

    public struct Info: LevelConfig {
        public var backgroundColor: UIColor? = DefaultColors.InfoDark

        public init() {}
    }

    public struct Warning: LevelConfig {
        public var backgroundColor: UIColor? = DefaultColors.WarningDark

        public init() {}
    }
}