%Inclass assignment 8

%Using the swalign function
% A. Create a random DNA sequence of length 100. 
Xiaotong Lu:
seq1=randseq(100)

% B. Create a second sequence from the first one by changing the middle 20 basepairs (at positions 41-60)
Xiaotong Lu:
seq2=[seq1(1:40),randseq(20),seq1(61:100)]

% C. run swalign on the two sequences with the default parameters
Xiaotong Lu:
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','showscore',true)

% D. run swalign with much higher and lower values of the GapOpen parameter
% and explain the results. 
Xiaotong Lu:
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',1,'showscore',true)
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',2,'showscore',true)
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',3,'showscore',true)
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',5,'showscore',true)
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',10,'showscore',true)
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',15,'showscore',true)

The gap open value is the cost of introducing a gap to an alignment. If the value is very high, the cost of introduce
a gap to an alignment will be very high. So there will be a trend to reduce the number of gap in this alignment which means there will
be more mismatch in this alignment.
And that's why the score of alignment is going down according to the increasing of gap open value. 
% E. run swalign with a low value of GapOpen but a high value of ExtendGap,
% explain the result
Xiaotong Lu:
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',1,'ExtendGap',15,'showscore',true)

ExtendGap value is the cost of extending the existed gap in an alignment. When the gap open value is small which means there will be more
gap in order to reach out a higher alignment score, the high extend gap value will limit the length of every gap.That means the gap length will
be reduced and the score will be reduced too accordingly. In this case, there will be more but shorter gap in this alignment. 

% F. run swalign align with the default value of GapOpen and a low value
% of ExtendGap and explain the result. 
Xiaotong Lu:
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','GapOpen',8,'ExtendGap',1,'showscore',true)

In that case, the cost of introducing a gap to the alignment is medium and the cost of extending the length of gap is really low so there will be 
large gaps in this alignment in a meidum number.As the default value of GapOpen is higher than the ExtendGap, there will be also a trend to reduce the 
number of gap by enlarging the length of the gap in order to reach a higer score of alignment.