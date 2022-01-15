Gradient norm clipping was metioned in Research Question~\ref{rsh:clip} and
Equation~\ref{eq:clip}, but was not described in detail. I
will now lay down the framework for this. To start off, we need a way to
describe the length of a matrix, since clipping should be done in a way that
scales down all of the elements as to preserve the relative transformation given
by the matrix. It is for this reason that I have trouble with the term "gradient
norm clipping" since the transformation to be described is scaling rather than
clipping and can be done on any matrix. I propose to use the term \emph{Matrix
Norm Scaling} as a more general term instead, for which the reasoning will
become more apparent further down the line.

Let's start by defining the matrix norm. For any other matter i.e. vector or
distance between reals, this is just the $\ell_2$ norm, so it would make sense
that we have the same thing for matrices. The $\ell_2$ norm for a matrix will
then be defined for a $m \times n$ matrix $\mat{M} \in \mathbb{R}^{m \times n}$ as
\begin{equation}\label{eq:matnorm}
    \norm{\mat{M}} = \sqrt{\sum_i^m\sum_j^n {M_{i, j}}^2}
\end{equation}. This is incredibly intuitive under the normal definition of
norm, so it will not be discussed any further. (EDIT: I'm just now finding out
this is commonly called the \emph{Frobnius Norm} and is usually denoted
$\norm{\mat{M}}_F$. I will continue to denote this as $\norm{\mat{M}}$ since it
is assumed that this is a matrix and that is my most intuitive understanding of
the subject.)

That being said, matrix norm scaling is done by taking some boundary or limiting
constant $C$, and any $\mat{M}$ needs to have its entries scaled down so that a
scaled version $\overline{\mat{M}}$ of $\mat{M}$ has $\norm{\overline{\mat{M}}}
\leq C$. This is done via the following:
\begin{equation}
    \overline{\mat{M}} = \begin{cases}
        \mat{M} & \text{if } \norm{\mat{M}} \leq C \\
        C\frac{\mat{M}}{\norm{\mat{M}}} & \text{otherwise}
    \end{cases}
\end{equation}

As a further contribution to Research Question~\ref{rsh:clip}, I considered on
my walk with $\mu$ today what one solution would be to the overarching question, that being
whether or not direct feedback alignment could provide a more differentially
private route for neural networks. This seems obviously true, and one method I
could think of to prove this is to fix as many components in a DFA and BP
approach as possible and then show that the number of epochs afforded by a
differentially private budget is greater in the case of the DFA algorithm than
the BP. One issue in this intuition would be that number of epochs does not
necessarily mean a more accurate/precise NN, so it would also need to be shown
that the number of epochs is significantly different and that this difference is
much more likely to have an optimum for the DFA algorithm. This would also
require a bit more theory to be researched for the DFA, but it seems plausible.
