//  Copyright © 2017 Christian Tietze. All rights reserved. Distributed under the MIT License.

import class Cocoa.NSColor

struct DefaultTheme: FatSidebarTheme {

    let itemStyle: FatSidebarItemStyle = DefaultItemStyle()
    let sidebarBackground = NSColor.disabledControlTextColor

    static var selectedColor: NSColor {
        return NSColor.controlLightHighlightColor
    }

    struct DefaultItemStyle: FatSidebarItemStyle {

        let background = StatefulColor(
            normal: NSColor.controlColor,
            selected: DefaultTheme.selectedColor,
            highlighted: NSColor.lightGray)

        let borders = Borders(
            bottom: StatefulColor(single: NSColor.darkGray),
            right: StatefulColor(
                normal: NSColor.darkGray,
                selected: DefaultTheme.selectedColor,
                highlighted: NSColor.darkGray))
    }
}
