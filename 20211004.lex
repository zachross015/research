In response to~\ref{rsh:clip}, is it possible to bound this by bounding the
entries of the weight matrices before and after the descent? So like if $\mat{W}$ is
the original weight matrix and $\mat{W'} \leftarrow \mat{W} - \alpha
\pdv{L}{\mat{W}}$
is there an upper bound $\delta$ on $\norm{\mat{W'} - \mat{W}} \leq \delta$?
What about an upper bound on $\norm{W'_{ij} - W_{ij}} \leq \delta$. I guess one
this we can note is that  
\begin{equation}
    \pdv{L}{\mat{W}} = \frac{\mat{W} - \mat{W'}}{\alpha}.
\end{equation}

I've been doing some more research on the subject and the following are things
that may help:

The \emph{Hessian} of a function $f: \mathbb{R}^n \rightarrow \mathbb{R}$ is 
\begin{equation}
    \label{eq:hessian}
    H_f = \begin{bmatrix}
        \frac{\partial^2 f}{\partial x_1^2} & 
        \frac{\partial^2 f}{\partial x_1 \partial x_2} & 
        \cdots & 
        \frac{\partial^2 f}{\partial x_1 \partial x_n} \\
        \frac{\partial^2 f}{\partial x_2 \partial x_1} & 
        \frac{\partial^2 f}{\partial x_2^2} & 
        \cdots & 
        \frac{\partial^2 f}{\partial x_2 \partial x_n} \\
        \vdots & \vdots & \ddots & \vdots \\
        \frac{\partial^2 f}{\partial x_n \partial x_1} &
        \frac{\partial^2 f}{\partial x_n \partial x_2} & 
        \cdots & 
        \frac{\partial^2 f}{\partial x_n^2}
    \end{bmatrix}
\end{equation}, and the max eigenvalue of this gives us the maximum curvature of
$f$, which if bounded tells us a lot about the function $f$.


