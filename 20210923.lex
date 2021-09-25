Assuming that $X$ and $Y$ are r.v.s from the same sample space, which we
will call the sample space $\samplespace$, then the \emph{max divergence} is essentially
the worst case scenario of KL divergence, given by the max rather than the
expectation. The following equation is from a lecture on differential
privacy~\autocite{difflect}:
\begin{equation}\label{eq:md}
    D_{\infty} (X || Y) = \max_{T \subset \samplespace} \left[ \ln p_X(T)  - \ln p_Y(T )\right] 
\end{equation}. For my own sake, I always get the meaning of $p_X(T)$
confused, so this is what it translates to:
\begin{equation}
    p_X(T) = P(X \in T) = \sum_{t \in T}p_X(t)
\end{equation}. That is, the probability of a random variable being a member of
a subset of the sample space is the sum of probabilities of members of that
subset. So Equation~\ref{eq:md} is the maximum difference in log probabilities
that can occur between two random variables with regards to subsets of a sample
space. Since this is a maximization, we can note that $\maxdiv{X}{Y} \neq
\maxdiv{Y}{X}$ \marginnote{Unless of course $X = Y$, in which case their max divergence is
zero.} since if $m = \ln p_X(T)  - \ln p_Y(T ) > 0$ is the maximum divergence with
some corresponding $T \subset \samplespace$, then $m$ is negative in the evaluation of $\ln p_Y(T) - \ln
p_X(T)$ due to the order of the subtraction being swapped.

An extension for max divergence includes the idea of closeness, quantified by
\emph{$\delta$-approximate max divergence}. Intuitively, this is the exclusion of any subset $T \subset \samplespace$ such
that $p_X(T) < \delta$, so that we are looking at only the subsets that occur
with probabilities in the range $[\delta, 1]$.
\begin{equation}\label{eq:mds}
    D^{\delta}_{\infty} (X || Y) = \max_{T \subset \samplespace\ |\ p_X(T) \geq \delta} \left[ \ln \left(p_X(T) -
    \delta\right)  - \ln p_Y(T )\right] 
\end{equation}

Just as a note so I don't forget to cite this later, most of the information
preceding this statement and in general on differential privacy come from the book
\citetitle{diffbook}~\autocite{diffbook}. Any other resources will be noted, but
it should be assumed that most information is straight from this book.

Additionally, the significance of Equations~\ref{eq:md} and~\ref{eq:mds} is that knowing
the max divergence allows us to make assumptions about the behavior of the rest
of the data. For example, if $\maxdivs{X}{Y} \leq \epsilon$, then we know that
any and all $S \subset \samplespace$ have the property that $p_X(S) \leq
e^{\epsilon}p_Y(S)$, which is an \emph{incredibly strong assertion}. This was
something that I struggled to figure out and inevitably had to find out on my
own, so it might be of help if teaching this in the future. If the max is
finitely bounded, then the rest of $\samplespace$ is also bounded with regards
to the divergence between $X$ and $Y$, which is used for proving various things,
such as Lemmas~\ref{lem:d} and~\ref{lem:ds}.
