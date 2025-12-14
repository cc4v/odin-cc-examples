// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "core:fmt"
import "shared:cc"
import "shared:cc/colors"

main :: proc () {
	cc.run(draw)
}

draw :: proc(){
	cc.background(colors.gray)

	if cc.key_pressed() {
		cc.set_color(colors.red)
		cc.rect(10, 10, 100, 100)

		cc.set_color(colors.white)
		// cc.text("${cc.key()}", 30, 30)
		str := fmt.tprint(cc.key())
		cc.text(str, 30, 30)
	} else {
		cc.set_color(colors.white)
		cc.rect(10, 10, 100, 100)
	}
}