I think one of the most confusing parts in differential privacy to me are the
roles of $\epsilon$ and $\delta$ in the quantifiation of privacy and analytical
bounds. For reference: $\epsilon$ is a parameter which defines the accuracy of
the elicited information. Higher values of $\epsilon$ tend to give much more
accurate answers, while lower values are more random. In $\epsilon$-differential
privacy, we see this since for a mechanism $\mathbb{M}$, random variable $X$ and
$X'$, and all outputs $y$ as
\begin{equation}
    P(\mathbb{M}(X) = y) \leq  e^{\epsilon} P(\mathbb{M}(X') = y)
\end{equation}. Note that by definition, if $\epsilon = 0$, then all outcomes
are equally under both cases, which would just mean that the random variables
$\mathbb{M}(X)$ and $\mathbb{M}(X')$ are independent of $X$ and $X'$. More
intuitively, this tells us that our conclusions to any query offer no
information about the topic and instead just produce noise. On the other hand,
high values of $\epsilon$ will produce little noise and just give us more and
more accurate information about a particular individual.
