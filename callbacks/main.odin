// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

package main

import "core:fmt"
import "shared:cc"
import util "../example_util"

main :: proc() {
	util.debug_tracking_allocator_init() // this is unnecessary

	cc.on_init(setup)
	cc.on_exit(on_exit)
	cc.on_event(on_event)
	cc.on_key_pressed(on_key_pressed)
	cc.on_mouse_pressed(on_mouse_pressed)

	cc.run(draw)
}

setup :: proc(){
	fmt.println("setup")
}

draw :: proc(){
	cc.text("hello world", 10, 10)
}

on_exit :: proc(){
	fmt.println("exit")
}

on_event :: proc(event: ^cc.Event){
	// fmt.println(event)
}

on_key_pressed :: proc(keycode: cc.Keycode, modifiers: cc.Modifiers){
	fmt.println("keycode", keycode)
}

on_mouse_pressed :: proc(x: f32, y: f32, btn: cc.Mousebutton){
	fmt.println("mouse-pressed: x y btn", x, y, btn)
}
