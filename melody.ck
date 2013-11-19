SqrOsc s => dac;

//array declaration
[54,56,63,54,48,50,52] @=> int A[];
[.5,.2,.4,.6,.5,.3,.4] @=> float notes[];

//A.cap() is the max number of element in array
<<< A.cap() >>>;

for ( 0 => int i; i < A.cap(); i++ )
{
    Std.mtof(A[i]) => s.freq;
    notes[i]::second => now;
}