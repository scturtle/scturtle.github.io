+++
title = 'Average Running Time of Quicksort'
date = 2013-11-09T08:00:00+08:00
+++

From an interesting [slide](http://aofa.cs.princeton.edu/lectures/lectures13/AA01-AofA.pdf).

We denote $C_N$ as the *expected* number of comparisons used by sorting an array of length $N$.
The recursive formula is like this:

$$C_N = (N+1) + \sum_{1\leq k \leq N} \frac 1N (C_{k-1}+C_{N-k})$$

which $N+1$ is the comparisons needed for partitioning, 
and then plus $N$ ways of partitioning with equal probability.
Also we have $C_1 = 0$.

Noticing the symmetric parttern in the sum part, we get:

$$C_N = (N+1) + \frac 2N \sum_{1\leq k \leq N} C_{k-1}$$

then

$$NC_N = N(N+1) + 2 \sum_{1\leq k \leq N} C_{k-1}$$

Time to high school math. First, we write down same formula for N-1:

$$(N-1)C_{N-1} = (N-1)N + 2 \sum_{1\leq k \leq N-1} C_{k-1}$$

Then we subtract the above two equations to get:

$$NC_N - (N-1)C_{N-1} = 2N + 2C_{N-1}$$

$$NC_N = (N+1)C_{N-1} + 2N$$

Key and tricky step, divide both side by $N(N+1)$:

$$\frac{C_N}{N+1} = \frac{C_{N-1}}{N} + \frac{2}{N+1}$$

Expand the right part to the end of the world:

$$\begin{split}
\frac{C_N}{N+1} &= \frac{C_{N-1}}{N} + \frac 2{N+1} \\
&= \frac{C_{N-2}}{N-1} + \frac 2N + \frac 2{N+1} \\
&= \frac {C_1} 2 + \frac 23 + \dots + \frac 2N + \frac 2{N+1}
\end{split}$$

Ignore small items:

$$c_N \sim 2N \sum_{1 \leq k \leq N} \frac 1k - 2N$$

Finally, use the magic [`Euler constant`](http://en.wikipedia.org/wiki/Euler%E2%80%93Mascheroni_constant) $\gamma$ = 0.57721...:

$$\begin{split}
c_N &\sim 2N (\int_1^\infty \frac 1x \mathrm{d} x + \gamma) - 2N \\
&=2N \ln N - 2(1-\gamma)N
\end{split}$$

It's $O(N \log N)$.
