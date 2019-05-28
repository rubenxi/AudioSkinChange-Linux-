#!/bin/ruby
 
# Get the current default sink

new_sink_index = `pacmd list-sinks | grep "\  index:"`.match(/\d{1,2}/)[0]
 puts new_sink_index
  `./moveskins.sh #{new_sink_index}`
  



