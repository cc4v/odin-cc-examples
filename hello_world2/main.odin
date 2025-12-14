// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "core:fmt"
import "shared:cc"
import util "../example_util"

Data :: struct {
	str: string
}

main :: proc() {
	util.debug_tracking_allocator_init() // this is unnecessary

	data := Data{
		str = "WORLD"
	}
	cc.run_with_data(draw, &data)
}

draw :: proc (dat: rawptr){
	d := (^Data)(dat)
	s := fmt.aprint("hello", d.str)
	cc.text(s, 10, 10)
	delete(s)
}