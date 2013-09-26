$: << "#{File.dirname(__FILE__)}"
require 'adjust'

include Leds

DEV_DIR = "/sys/class/leds/samsung::kbd_backlight/"

adjust(parseargs([
	File.join(DEV_DIR, 'brightness'),
	File.join(DEV_DIR, 'max_brightness'),
	(ARGV[0]),
	8
	]))