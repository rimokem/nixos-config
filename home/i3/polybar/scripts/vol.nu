#!/usr/bin/env nu
def main [] {}

def "main status" [] {
  wpctl get-volume @DEFAULT_SINK@ | str replace "Volume: " "" | into float | $in * 100 | into string | $in + '%'
}

def "main up" [n: int] {
  wpctl set-volume @DEFAULT_SINK@ $'($n)%+' | null
  wpctl get-volume @DEFAULT_SINK@ | str replace "Volume: " "" | into float | $in * 100 + $n | into string | $in + '%'
}

def "main down" [n: int] {
  wpctl set-volume @DEFAULT_SINK@ $'($n)%-' | null
  wpctl get-volume @DEFAULT_SINK@ | str replace "Volume: " "" | into float | $in * 100 - $n | into string | $in + '%'
}

def "main mute" [] {
  wpctl set-mute @DEFAULT_SINK@ toggle | null
  wpctl get-volume @DEFAULT_SINK@ | str replace "Volume: " "" | into float | $in * 100 | into string | $in + '%'
}
