One other method of measuring the distance between two distributions is using
the \emph{statistical distance}. \st{Unlike divergence, this is actually a
metric!} \emph{Psych!} It is not a metric. Stupid.
We define this as 
\begin{equation}\label{eq:statdist}
    \Delta(X, Y) = \max_{T \subset \samplespace} p_X(T) - p_Y(T)
\end{equation}

It is of important note that Equation~\ref{eq:md} is equivalent to
$\epsilon$-differential privacy and Equation~\ref{eq:mds} is equivalent to
$(\epsilon, \delta)$-differential privacy.

A couple of important lemmas proceed from these definitions, both of which put
$\delta$-approximate divergence in terms of exact divergence:

\begin{lemma}\label{lem:d}
    $\maxdivs{X}{Y} \leq \epsilon$ if and only if there exists a random variable $X'$ s.t.
    $\Delta(X, X') \leq \delta$ and $\maxdiv{X'}{Y} \leq \epsilon$.
\end{lemma}

\begin{lemma}\label{lem:ds}
    We have both $\maxdivs{X}{Y} \leq \epsilon$ and $\maxdivs{Y}{X} \leq
    \epsilon$ if and only if there exist random variables $X'$ and $Y'$ s.t.
    $\Delta(X, X') \leq \delta/(e^{\epsilon} + 1)$, $\Delta(Y, Y') \leq
    \delta/(e^{\epsilon} + 1)$, and $\maxdiv{X'}{Y'} \leq \epsilon$.
\end{lemma}

The proofs for lemmas and theorems will generally not be included here, unless
they are something I have proved myself. This is mainly to save time, but also
because they can be found at their corresponding resources. The lemmas above
were proved in \citetitle{diffbook}.
