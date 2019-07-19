Abstract:
The purpose of this project was to bring previous labs mainly Labs F-G together to develop
and test a larger sequential design and then target it to the board. 
The aim was to detect a certain sequence (using a finite state machine) of numbers coming
from the bit stream produced by the LFSR. Then once this sequence was found
we should increment our counter by one and show it on the 7-seg display.
In conclusion when my final code was tested on the board it worked flawlessly
as with each time the codeword appeared it would add on to the counter and
when you reached 2^(n-1) steps the counter reset and started counting again.
