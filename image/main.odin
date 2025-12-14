// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "base:runtime"
import "core:fmt"
import "shared:cc"
import "shared:cc/colors"
import util "../example_util"

image: cc.Image

main :: proc() {
	util.debug_tracking_allocator_init() // this is unnecessary

	cc.on_init(setup)
	cc.on_exit(on_exit)
	cc.run(draw)
}

setup :: proc() {
	img, err := cc.load_image("assets/sample.png")

	if err != false {
		fmt.eprintfln("[Error] Failed to load image")
		// runtime.exit(1)
	}

	image = img
}

draw :: proc(){
	cc.set_color(colors.white)
	cc.image(&image, 0, 0)
	cc.image_with_size(&image, 60, 0, 50, 100)
}

on_exit :: proc () {
	cc.delete_image(&image)
}