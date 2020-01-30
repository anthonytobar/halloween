a ="C:/Users/anthony_tobar/Desktop/sonicpi/Man Screaming - CEEDAY Sound Effect (HD).wav"
beat ="C:/Users/anthony_tobar/Desktop/sonicpi/Heartbeat Sound Effect Slow, Fast, Creepy, Irregular, Normal - Free Download I No Copyright.wav"
x=1

use_bpm 136
use_synth :piano
sample a
sleep 5
4.times do
  x = x - 0.1
  sample a, rate: x
  sleep 3
end
sleep 9
live_loop :loop1 do
  play :d
  sleep 0.5
  play :f
  sleep 0.5
  play :f
  sleep 0.5
  play :d
  sleep 0.5
  play :f
  sleep 0.5
  play :f
  sleep 0.5
  play :d
  sleep  0.5
  play :f
  sleep 0.5
  play :d
  sleep 0.5
  play :f
  sleep 0.5
end

live_loop :loop2 do
  play :f2, sustain: 10
  sleep 5
  play :f2, sustain: 10
  sleep 5
  play :f2, sustain: 10
  sleep 5
end

live_loop :background_beat do
  sample beat
  sleep 5
end