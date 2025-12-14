// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "core:fmt"
import "shared:cc"
import "shared:cc/colors"
import util "../example_util"

main :: proc () {
	util.debug_tracking_allocator_init() // this is unnecessary

	cc.run(draw)
}

draw :: proc(){
	cc.background(colors.gray)

	if cc.key_pressed() {
		cc.set_color(colors.red)
		cc.rect(10, 10, 100, 100)

		cc.set_color(colors.white)

		str := fmt.aprint(cc.key())
		cc.text(str, 30, 30)
		delete(str)
	} else {
		cc.set_color(colors.white)
		cc.rect(10, 10, 100, 100)
	}
}