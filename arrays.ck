SqrOsc s => dac;

//array declaration
[54,56,63,54,48,50,52] @=> int A[];

//A.cap() is the max number of element in array
<<< A.cap() >>>;

for ( 0 =>int i; i < A.cap(); i++ )
{
    Std.mtof(A[i]) => s.freq;
    .5::second => now;
}