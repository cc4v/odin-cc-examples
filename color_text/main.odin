// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "shared:cc"
import "shared:cc/colors"

main :: proc() {
	cc.run(draw)
}

draw :: proc () {
	cc.text_size(10)
	cc.set_color(colors.red)
	cc.text("hello", 10, 10)

	cc.text_size(20)
	cc.set_color(colors.green)
	cc.text("hello", 10, 40)

	cc.text_size(30)
	cc.set_color(colors.blue)
	cc.text("hello", 10, 80)
}