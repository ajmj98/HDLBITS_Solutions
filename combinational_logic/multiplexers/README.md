# NOTES TO REMEMBER

# 256-to-1 4bit Multiplexer
 We can't part-select multiple bits without an error, but we can select one bit at a time four times, then concatenate them together.<br>assign out = {in[sel*4+3], in[sel*4+2], in[sel*4+1], in[sel*4+0]};

Alternatively, "indexed vector part select" works better, but has an unfamiliar syntax:
  <br> assign out = in[sel*4 +: 4];	 Select starting at index "sel*4", then select a total width of 4 bits with increasing (+:) index number.
	<br> assign out = in[sel*4+3 -: 4];	 Select starting at index "sel*4+3", then select a total width of 4 bits with decreasing (-:) index number.

 
 Note: The width (4 in this case) must be constant.
