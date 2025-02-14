use_bpm 160
use_synth :saw

live_loop :notes do
  2.times do  # This loop repeats twice before continuing indefinitely
    play :c2
    sleep 0.5
    play :e1
    sleep 0.5
    play :g3
    sleep 0.5
    play :b2
    sleep 0.5
    
    play :c3
    sleep 0.5
    play :b2
    sleep 0.5
    play :g3
    sleep 0.5
    play :e1
    sleep 0.5
    
    play :c4
    sleep 0.5
    play :e1
    sleep 0.5
    play :g3
    sleep 0.5
    play :b2
    sleep 0.5
    
    play :c4
    sleep 0.5
    play :b2
    sleep 0.5
    play :g3
    sleep 0.5
    play :e1
    sleep 0.5
  end
end

sleep 4  # Delay before `:spooky` starts

live_loop :spooky do
  3.times do  # This loop repeats 3 times before stopping
    sample :ambi_haunted_hum, amp: 0.5
    sleep 4
  end
  stop  # Ends the loop after 3 repetitions
end

sleep 8  # Delay before `:dark` starts

live_loop :dark do
  sample :bd_haus, amp: 1.5
  sleep 1
end
