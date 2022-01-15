Was doing a massive rabbit hole down the world of matrix derivates today and
inevitably came across nothing notable, but I figured it's probably a good idea
to put my results here in case I ever try and do this shit again (as I have done
before). Let $A \in \mathbb{R}^{m \times k_1}$ and $B \in \mathbb{R}^{k_2 \times
n}$. Let 
\begin{equation}
    \begin{aligned}
        f: \mathbb{R}^{k_1 \times k_n} &\rightarrow \mathbb{R}^{m \times n} \\
        f(X) &\mapsto AXB
    \end{aligned}
\end{equation}. 
Then 
\begin{equation}\label{eq:thing}
    \nabla_X f = \begin{bmatrix}
        \begin{bmatrix}
            A_{1,1}B_{1,1} & \dots & A_{1,1}B_{1,n} \\
            \vdots & \ddots & \vdots \\
            A_{m,1}B_{1,1} & \dots & A_{m,1}B_{1,n}
        \end{bmatrix} & \dots &
        \begin{bmatrix}
            A_{1,1}B_{k_2,1} & \dots & A_{1,1}B_{k_2,n} \\
            \vdots & \ddots & \vdots \\
            A_{m,1}B_{k_2,1} & \dots & A_{m,1}B_{k_2,n}
        \end{bmatrix} \\
            \vdots & \ddots & \vdots \\
        \begin{bmatrix}
            A_{1,k_1}B_{1,1} & \dots & A_{1,k_1}B_{1,n} \\
            \vdots & \ddots & \vdots \\
            A_{m,k_1}B_{1,1} & \dots & A_{m,k_1}B_{1,n}
        \end{bmatrix} & \dots &
        \begin{bmatrix}
            A_{1,k_1}B_{k_2,1} & \dots & A_{1,k_1}B_{k_2,n} \\
            \vdots & \ddots & \vdots \\
            A_{m,k_1}B_{k_2,1} & \dots & A_{m,k_1}B_{k_2,n}
        \end{bmatrix}
    \end{bmatrix}
\end{equation}. Its much cleaner to view this as individual entries
\begin{equation}
    {\left(\nabla_X f\right)}_{ij} =
        \begin{bmatrix}
            A_{1,i}B_{j,1} & \dots & A_{1,i}B_{j,n} \\
            \vdots & \ddots & \vdots \\
            A_{m,i}B_{j,1} & \dots & A_{m,i}B_{j,n}
        \end{bmatrix} 
\end{equation}. Ohh wait, I may have just been stupid. I see something now
\begin{equation}
    {\left(\nabla_X f\right)}_{i,j} = A_{:,i}B_{j,:}
\end{equation}. Actually that's about it lol, it's just a shorthand. The
simplified form of Equation~\ref{eq:thing} is then
\begin{equation}
    \nabla_X f = \begin{bmatrix}
        A_{:,1}B_{1,:} & \dots & A_{:,1}B_{k_2,:} \\
        \vdots & \ddots & \vdots \\
        A_{:,k_1}B_{1,:} & \dots & A_{:,k_1}B_{k_2,:}
    \end{bmatrix}
\end{equation}.
