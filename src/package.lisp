(defpackage #:cl-raylib
  (:nicknames #:raylib)
  (:use #:cl #:cffi #:alexandria)
  (:export #:init-window
           #:window-should-close
           #:close-window
           #:is-window-ready
           #:is-window-minimized
           #:is-window-resized
           #:is-window-hidden
           #:is-window-fullscreen
           #:toggle-fullscreen
           #:unhide-window
           #:hide-window
           #:set-window-icon
           #:set-window-title
           #:set-window-position
           #:set-window-monitor
           #:set-window-min-size
           #:set-window-size
           #:get-window-handle
           #:get-screen-width
           #:get-screen-height
           #:get-monitor-count
           #:get-monitor-width
           #:get-monitor-height
           #:get-monitor-physical-width
           #:get-monitor-physical-height
           #:get-window-position
           #:get-monitor-name
           #:get-clipboard-text
           #:set-clipboard-text
           #:show-cursor
           #:hide-cursor
           #:is-cursor-hidden
           #:enable-cursor
           #:disable-cursor
           #:clear-background
           #:begin-drawing
           #:end-drawing
           #:begin-mode-2d
           #:end-mode-2d
           #:begin-mode-3d
           #:end-mode-3d
           #:begin-texture-mode
           #:end-texture-mode
           #:begin-scissor-mode
           #:end-scissor-mode
           #:get-mouse-ray
           #:get-camera-matrix
           #:get-camera-matrix-2d
           #:get-world-to-screen
           #:set-target-fps
           #:get-fps
           #:get-frame-time
           #:get-time
           #:color-to-int
           #:color-normalize
           #:color-from-normalized
           #:color-to-hsv
           #:color-from-hsv
           #:get-color
           #:fade
           #:set-config-flags
           #:set-trace-log-level
           #:set-trace-log-exit
           #:trace-log
           #:take-screenshot
           #:get-random-value
           #:load-file-data
           #:save-file-data
           #:load-file-text
           #:save-file-text
           #:file-exists
           #:is-file-extension
           #:directory-exists
           #:get-extension
           #:get-file-name
           #:get-file-name-without-ext
           #:get-directory-path
           #:get-prev-directory-path
           #:get-working-directory
           #:get-directory-files
           #:change-directory
           #:is-file-dropped
           #:get-dropped-files
           #:clear-dropped-files
           #:get-file-mod-time
           #:compress-data
           #:decompress-data
           #:save-storage-value
           #:load-storage-value
           #:open-url
           #:is-key-pressed
           #:is-key-down
           #:is-key-released
           #:is-key-up
           #:set-exit-key
           #:get-key-pressed
           #:is-gamepad-available
           #:is-gamepad-name
           #:get-gamepad-name
           #:is-gamepad-button-pressed
           #:is-gamepad-button-down
           #:is-gamepad-button-released
           #:is-gamepad-button-up
           #:get-gamepad-button-pressed
           #:get-gamepad-axis-count
           #:get-gamepad-axis-movement
           #:is-mouse-button-pressed
           #:is-mouse-button-down
           #:is-mouse-button-released
           #:is-mouse-button-up
           #:get-mouse-x
           #:get-mouse-y
           #:get-mouse-position
           #:set-mouse-position
           #:set-mouse-offset
           #:set-mouse-scale
           #:get-mouse-wheel-move
           #:get-touch-x
           #:get-touch-y
           #:get-touch-position
           #:set-gestures-enabled
           #:is-gesture-detected
           #:get-gesture-detected
           #:get-touch-points-count
           #:get-gesture-hold-duration
           #:get-gesture-drag-vector
           #:get-gesture-drag-angle
           #:get-gesture-pinch-vector
           #:get-gesture-pinch-angle
           #:set-camera-mode
           #:update-camera
           #:set-camera-pan-control
           #:set-camera-alt-control
           #:set-camera-smooth-zoom-control
           #:set-camera-move-controls
           #:draw-pixel
           #:draw-pixel-v
           #:draw-line
           #:draw-line-v
           #:draw-line-ex
           #:draw-line-bezier
           #:draw-line-strip
           #:draw-circle
           #:draw-circle-sector
           #:draw-circle-sector-lines
           #:draw-circle-gradient
           #:draw-circle-v
           #:draw-circle-lines
           #:draw-ellipse
           #:draw-ellipse-lines
           #:draw-ring
           #:draw-ring-lines
           #:draw-rectangle
           #:draw-rectangle-rec
           #:draw-rectangle-pro
           #:draw-rectangle-gradient-v
           #:draw-rectangle-gradient-h
           #:draw-rectangle-gradient-ex
           #:draw-rectangle-lines
           #:draw-rectangle-lines-ex
           #:draw-rectangle-rounded
           #:draw-rectangle-rounded-lines
           #:draw-triangle
           #:draw-triangle-lines
           #:draw-triangle-fan
           #:draw-triangle-strip
           #:draw-poly
           #:draw-poly-lines
           #:check-collision-recs
           #:check-collision-circles
           #:check-collision-circle-rec
           #:get-collision-rec
           #:check-collision-point-rec
           #:check-collision-point-circle
           #:check-collision-point-triangle
           #:load-image
           #:load-image-ex
           #:load-image-pro
           #:load-image-raw
           #:unload-image
           #:export-image
           #:export-image-as-code
           #:get-image-data
           #:get-image-data-normalized
           #:get-image-color
           #:get-image-gradient-v
           #:get-image-gradient-h
           #:get-image-cellular
           #:image-copy
           #:image-from-image
           #:image-text
           #:image-text-ex
           #:image-to-pot
           #:image-format
           #:image-alpha-mask
           #:image-alpha-clear
           #:image-alpha-crop
           #:image-alpha-premultiply
           #:image-crop
           #:image-resize
           #:image-resize-n-n
           #:image-resize-canvas
           #:image-mipmaps
           #:image-dither
           #:image-flip-vertical
           #:image-flip-horizontal
           #:image-rotate-cw
           #:image-rotate-ccw
           #:image-color-tint
           #:image-color-invert
           #:image-color-grayscale
           #:image-color-contrast
           #:image-color-brightness
           #:image-color-replace
           #:image-extract-palette
           #:get-image-alpha-border
           #:get-screen-data
           #:gen-texture-mipmaps
           #:set-texture-filter
           #:set-texture-wrap
           #:draw-texture
           #:draw-texture-v
           #:draw-texture-ex
           #:draw-texture-rec
           #:draw-texture-quad
           #:draw-texture-pro
           #:draw-texture-n-patch
           #:get-font-default
           #:load-font
           #:load-font-ex
           #:load-font-from-image
           #:load-font-data
           #:unload-font
           #:draw-fps
           #:draw-text
           #:get-glyph-index
           #:text-copy
           #:text-is-equal
           #:text-length
           #:text-format
           #:text-subtext
           #:text-replace
           #:text-insert
           #:text-join
           #:text-split
           #:text-append
           #:text-find-index
           #:text-to-upper
           #:text-to-lower
           #:text-to-pascal
           #:text-to-integer
           #:text-to-utf8
           #:draw-line-3d
           #:draw-circle-3d
           #:draw-cube
           #:draw-cube-v
           #:draw-cube-wires
           #:draw-cube-wires-v
           #:draw-cube-texture
           #:draw-sphere
           #:draw-sphere-ex
           #:draw-sphere-wires
           #:draw-cylinder
           #:draw-cylinder-wires
           #:draw-plance
           #:draw-ray
           #:draw-grid
           #:draw-gizmo
           #:load-model
           #:load-model-from-mesh
           #:unload-model
           #:load-meshes
           #:export-mesh
           #:unload-mesh
           #:gen-mesh-plane
           #:gen-mesh-cube
           #:gen-mesh-sphere
           #:gen-mesh-hemi-sphere
           #:gen-mesh-cylinder
           #:gen-mesh-torus
           #:gen-mesh-knot
           #:gen-mesh-heightmap
           #:gen-mesh-cubicmap
           #:mesh-bounding-box
           #:mesh-tangents
           #:mesh-binormals
           #:draw-model
           #:draw-model-ex
           #:draw-model-wires
           #:draw-model-wires-ex
           #:draw-bounding-box
           #:draw-billboard
           #:draw-billboard-rec
           #:calculate-bounding-box
           #:check-collision-spheres
           #:check-collision-boxes
           #:check-collision-box-sphere
           #:check-collision-ray-sphere
           #:check-collision-ray-sphere-ex
           #:check-collision-ray-box
           #:get-collision-ray-model
           #:get-collision-ray-triangle
           #:get-collision-ray-ground
           #:load-shader
           #:load-shader-code
           #:unload-shader
           #:get-shader-default
           #:get-texture-default
           #:get-shapes-texture
           #:get-shapes-texture-rec
           #:set-shapes-texture
           #:get-shader-location
           #:set-shader-value
           #:set-shader-value-v
           #:set-shader-value-matrix
           #:set-shader-value-texture
           #:set-matrix-projection
           #:set-matrix-modelview
           #:get-matrix-modelview
           #:get-matrix-projection
           #:gen-texture-cubemap
           #:gen-texture-irradiance
           #:gen-texture-prefilter
           #:gen-texture-brdf
           #:begin-shader-mode
           #:end-shader-mode
           #:begin-blend-mode
           #:end-blend-mode
           #:init-vr-simulator
           #:close-vr-simulator
           #:update-vr-tracking
           #:set-vr-configuration
           #:is-vr-simulator-ready
           #:toggle-vr-mode
           #:begin-vr-drawing
           #:end-vr-drawing
           #:init-audio-device
           #:close-audio-device
           #:is-audio-device-ready
           #:set-master-volume
           #:load-wave
           #:load-sound
           #:load-sound-from-wave
           #:update-sound
           #:unload-wave
           #:unload-sound
           #:export-wave
           #:export-wave-as-code
           #:play-sound
           #:pause-sound
           #:resume-sound
           #:play-sound-multi
           #:stop-sound-multi
           #:get-sounds-playing
           #:is-sound-playing
           #:set-sound-volume
           #:set-sound-pitch
           #:wave-format
           #:wave-copy
           #:wave-crop
           #:get-wave-data
           #:load-music-stream
           #:unload-music-stream
           #:play-music-stream
           #:update-music-stream
           #:stop-music-stream
           #:pause-music-stream
           #:resume-music-stream
           #:is-music-playing
           #:set-music-volume
           #:set-music-pitch
           #:get-music-loop-count
           #:get-music-time-length
           #:get-music-time-played
           #:init-audio-stream
           #:update-audio-stream
           #:close-audio-stream
           #:is-audio-stream-processed
           #:play-audio-stream
           #:pause-audio-stream
           #:resume-audio-stream
           #:is-audio-stream-palying
           #:stop-audio-stream
           #:set-audio-stream-volume
           #:set-audio-stream-pitch
           #:set-audio-stream-buffer-size

           #:+lightgray+
           #:+gray+
           #:+darkgray+
           #:+yellow+
           #:+gold+
           #:+orange+
           #:+pink+
           #:+red+
           #:+maroon+
           #:+green+
           #:+lime+
           #:+darkgreen+
           #:+skyblue+
           #:+blue+
           #:+darkblue+
           #:+purple+
           #:+violet+
           #:+darkpurple+
           #:+beige+
           #:+brown+
           #:+darkbrown+
           #:+white+
           #:+black+
           #:+blank+
           #:+magenta+
           #:+raywhite+

           ;; high level api
           #:with-window
           #:with-drawing))
