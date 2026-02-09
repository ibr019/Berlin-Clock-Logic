# Berlin-Clock-Logic
The Berlin Clock (Mengenlehreclock or Berlin Uhr) is a clock that tells the time using a series of illuminated colored blocks, as you can see if you google for Berlin Clock.

The top lamp blinks to show seconds - it is illuminated on **even** seconds and off on **odd** seconds.

The next two rows represent hours. The upper row represents 5 hour blocks and is made up of 4 red lamps. The lower row represents 1 hour blocks and is also made up of 4 red lamps.

The final two rows represent the minutes. The upper row represents 5 minute blocks, and is made up of 11 lamps - every third lamp is red, others are yellow. The bottom row represents 1 minute blocks, and is made up of 4 yellow lamps.

So what we want first is a way to get a textual representation of a Berlin Clock time based on a digital time.

We're going to be going over the clock row by row to make things clearer and ensure we get everything right first time

**Y – yellow, O – off, R – red**

Entire Berlin Clock Test cases
00:00:00  YOOOOOOOOOOOOOOOOOOOOOOO
23:59:59  ORRRRRRROYYRYYRYYRYYYYYY
