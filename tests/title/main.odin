// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "core:math/rand"
import "shared:cc"
import util "../../example_util"

main :: proc() {
	util.debug_tracking_allocator_init() // this is unnecessary

	cc.run(draw)
}

draw :: proc() {
    if rand.float32() > 0.5 {
	    cc.title("hello")
    } else {
	    cc.title("hello!!!!!!")
    }
}