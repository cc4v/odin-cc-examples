// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "shared:cc"
import sgl "shared:sokol/gl"
import util "../example_util"

main :: proc() {
	util.debug_tracking_allocator_init() // this is unnecessary

	cc.run(draw)
}

draw :: proc() {
	sgl.begin_triangles()
	sgl.v2f_c3b(-0.5, -0.5, 255, 0, 0)
	sgl.v2f_c3b(0.0, 0.5, 0, 255, 0)
	sgl.v2f_c3b(0.5, -0.5, 0, 0, 255)
	sgl.end()
}