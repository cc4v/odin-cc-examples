// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "shared:cc"
import "shared:cc/colors"
import sgl "shared:sokol/gl"
import util "../example_util"

main :: proc() {
	util.debug_tracking_allocator_init() // this is unnecessary

	cc.run(draw)
}

draw :: proc() {
	// shows rainbow odin logo

	// d :: 1.0
	w := f32(cc.width())
	h := f32(cc.height())

	cc.set_color(colors.white)

	a := colors.color_u8_from_rgb(100, 250, 154)
	b := colors.color_u8_from_rgb(247, 253, 236)
	c := colors.color_u8_from_rgb(255, 94, 44)
	d := colors.color_u8_from_rgb(119, 102, 229)

	sgl.begin_quads()
	sgl.v2f_c3b(0, 0, a.r, a.g, a.b)
	sgl.v2f_c3b(w, 0, b.r, b.g, b.b)
	sgl.v2f_c3b(w, h, c.r, c.g, c.b)
	sgl.v2f_c3b(0, h, d.r, d.g, d.b)
	sgl.end()

	cc.set_color(colors.white)
	cc.text_size(32)
	cc.text("odin-cc:", 100, 100)
	cc.text_size(14)
	cc.text("creative coding framework", 30, 200)
	cc.text("for odin", 30, 230)
}