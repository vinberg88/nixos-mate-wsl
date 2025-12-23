#!/usr/bin/env bash
set -e

export DISPLAY=localhost:0
export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
export QT_QPA_PLATFORM=xcb
export LIBGL_ALWAYS_INDIRECT=1

if ! pgrep -u "$USER" dbus-daemon >/dev/null; then
  eval "$(dbus-launch --sh-syntax)"
fi

exec mate-session
