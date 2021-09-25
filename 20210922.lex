Hello world! This is my first research entry.  This document is primarily going
to be dedicated to my thirst for knowledge, along with the occasional injection
of my opinions on things I either find incredibly enjoyable or demonstrably
lackluster in the fields of computer science. Although others may not read this,
I will attempt to make this enjoyable as I will still have to dredge through
this article at some point in time due to the influx of knowledge I hope to
attain.

Here is an example of some equation:
\begin{equation}
    \int_0^1 e^{-t} dt
\end{equation}

Fun aside, I've struggled with understanding max KL divergence, so I'm going to
give a bit of my understanding here. 

\section{KL Divergence}%

\emph{KL divergence}, defined for random
variables $X$ and $Y$ \marginnote{$X$ and $Y$ are assumed to be from the same
sample space \samplespace.} as  
\begin{equation}
    D(X||Y) = \expectdist{x \sim X}{\ln p_X(x) - \ln p_Y(x)}
\end{equation}
is \emph{the expected amount of information gained or lost by using the
distribution defined by $Y$ instead of the one defined by $X$}. This is also
referred to as the relative entropy of $X$ with respect to $Y$. I like to think
of it as the average error accumulated by sampling values from $X$, viewing their
performance in $Y$, and seeing the difference between the two.
