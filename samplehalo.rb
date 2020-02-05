scream ="C:/Users/anthony_tobar/Desktop/sonicpi/manscream.wav"
heart ="C:/Users/anthony_tobar/Desktop/sonicpi/heart.wav"
beat2 ="C:/Users/anthony_tobar/Desktop/sonicpi/freddylullaby.wav"
b = "C:/Users/anthony_tobar/Desktop/sonicpi/behindyou.wav"
x=1
g=0.5

use_bpm 136
use_synth :piano
sample scream
sleep 6
live_loop :background_beat do
  1.times do
    sample heart
    sleep 5
  end
  stop
end

4.times do
  x = x - 0.1
  sample scream, rate: x
  sleep 5
end
sleep 9
live_loop :loop1 do
  2.times do
    play :d
    sleep g
    play :f
    sleep g
    play :f
    sleep g
    play :d
    sleep g
    play :f
    sleep g
    play :f
    sleep g
    play :d
    sleep g
    play :f
    sleep g
    play :d
    sleep g
    play :f
    sleep g
  end
  stop
end

live_loop :loop2 do
  1.times do
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