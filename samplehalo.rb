a ="C:/Users/anthony_tobar/Desktop/sonicpi/Man Screaming - CEEDAY Sound Effect (HD).wav"
beat ="C:/Users/anthony_tobar/Desktop/sonicpi/Heartbeat Sound Effect Slow, Fast, Creepy, Irregular, Normal - Free Download I No Copyright.wav"
beat2 ="C:/Users/anthony_tobar/Desktop/sonicpi/Heart Beat - Halloween Chopped Up - Halloween Sound Effects.mp3"
b = "C:/Users/anthony_tobar/Desktop/sonicpi/behindyou.wav"
x=1

use_bpm 136
use_synth :piano
sample a
sleep 6
live_loop :background_beat do
  1.times do
    sample beat
    sleep 5
  end
  stop
end

4.times do
  x = x - 0.1
  sample a, rate: x
  sleep 5
end
sleep 9
live_loop :loop1 do
  2.times do
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
  stop
end

live_loop :loop2 do
  1.times do
    play :f2, sustain: 10
    sleep 5
    play :f2, sustain: 10
    sleep 5
    play :f2, sustain: 10
    sleep 5
  end
  stop
end

sleep 15
sample beat2
sample b