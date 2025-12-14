// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

// import "core:fmt"
import "shared:cc"
import "shared:cc/colors"

main :: proc() {
	cc.run(draw)
}

draw :: proc(){
	x := cc.mouse_x()
	y := cc.mouse_y()

	// fmt.println("mouse x, y =", x, y)

	cc.fill()
	cc.set_color(colors.red)
	cc.circle(x, y, 100)

	cc.no_fill()
	cc.set_color(colors.blue)
	cc.circle(x + 20, y + 20, 100)
}