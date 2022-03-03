//
// Created by Johnny Choi on 3/3/2022.
// Copyright (c) 2022 Johnny Tsoi@JT501. All rights reserved.
//

import Foundation

/// SwiftNotify **Cyber Dark** theme
class CyberDark: CyberThemeBase {
    override var typeDictionary: [E: NoticeTypeProtocol] {
        [
            .success: Success(),
            .fail: Fail(),
            .info: Info(),
            .warning: Warning()
        ]
    }
    let iconImageTintColor: UIColor? = .white
}

private struct Success: NoticeTypeProtocol {
    let backgroundColor: UIColor = DefaultColors.SuccessDark
    let iconImage: UIImage? = DefaultIcons.SuccessDark
}

private struct Fail: NoticeTypeProtocol {
    let backgroundColor: UIColor = DefaultColors.FailDark
    let iconImage: UIImage? = DefaultIcons.FailDark
}

private struct Info: NoticeTypeProtocol {
    let backgroundColor: UIColor = DefaultColors.InfoDark
    let iconImage: UIImage? = DefaultIcons.InfoDark
}

private struct Warning: NoticeTypeProtocol {
    let backgroundColor: UIColor = DefaultColors.WarningDark
    let iconImage: UIImage? = DefaultIcons.WarningDark
}


