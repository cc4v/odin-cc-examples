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
	// shows rainbow triangles

	w := f32(cc.width())
	h := f32(cc.height())
	x1 := w * 0.25
	y1 := h * 0.25
	x2 := w * 0.75
	y2 := h * 0.75

	r := cc.u8_color(colors.red)
	g := cc.u8_color(colors.green)
	b := cc.u8_color(colors.blue)

	sgl.begin_triangles()
	sgl.v2f_c3b(x1, y2, r.r, r.g, r.b)
	sgl.v2f_c3b((x1 + x2) / 2.0, y1, g.r, g.g, g.b)
	sgl.v2f_c3b(x2, y2, b.r, b.g, b.b)
	sgl.end()
}