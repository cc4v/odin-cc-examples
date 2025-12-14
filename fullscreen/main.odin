// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "shared:cc"
import "shared:cc/colors"
import util "../example_util"

main :: proc() {
	util.debug_tracking_allocator_init() // this is unnecessary

	cc.run(draw)
}

draw :: proc() {
	cc.set_color(colors.red)
	cc.text("Press T", 10, 10)
	cc.set_color(colors.black)
	cc.text("to toggle fullscreen", 10, 30)

	if cc.key_just_pressed(.T) {
		cc.toggle_fullscreen()
	}
}