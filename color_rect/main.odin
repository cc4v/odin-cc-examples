// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "shared:cc"
import util "../example_util"
import "shared:cc/colors"

main :: proc() {
    util.debug_tracking_allocator_init() // this is unnecessary

    cc.run(draw)
}

draw :: proc() {
    cc.fill()
    cc.set_color(colors.red)
    cc.rect(20, 20, 100, 100)

    cc.no_fill()
    cc.set_color(colors.blue)
    cc.rect(10, 10, 100, 100)
}