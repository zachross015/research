I'm often bothered by the notation of vectors in linear algebra, or in vector
spaces in general. Most people consider a vector $\vec{x}$ as being either $m
\times 1$ or $1 \times m$ dimensional i.e. column or row vectors respectively.
In reality, it is neither. A vector is just a contiguous sequence with its only
dimensionality being $m$, in the same sense that an $m \times n$ matrix is
not a $m \times n \times 1$, $m \times 1 \times n$, or $1 \times m \times n$
tensor.  

Now I know what you're thinking, surely there's some errors that come
about in the perspective that a vector is just a sequence, one of which I have
come to is in multiplication. The way I see it, there are three different ways
to multiply a vector, depending on the original sense of it being either a
"column" vector or "row" vector. But want I want to show is that these
operations can be specified just as that: operations. They aren't dependent on
this arbitrary augmentation to another dimensionality.

Let $\vec{x} \in \mathbb{R}^n$ and $\vec{y} \in \mathbb{R}^m$ be vectors and $k
= \min\{m, n\}$. The
\emph{scalar product} is 
\begin{equation}
    \vec{x} \cdot \vec{y} = \sum_{i = 1}^k x_iy_i
\end{equation},
the \emph{vector product} is
\begin{equation}
    \vec{x} \odot \vec{y} = [x_1y_1, x_2y_2, \dots, x_k y_k]
\end{equation},
and the \emph{matrix product is}
\begin{equation}
    \vec{x} \otimes \vec{y} = 
    \begin{bmatrix}
        x_1 y_1 & x_2 y_1 & \cdots & x_n y_1 \\
        x_1 y_2 & x_2 y_2 & \cdots & x_n y_2 \\
        \vdots & \vdots & \ddots & \vdots \\
        x_1 y_m & x_2 y_m & \cdots & x_n y_m \\
    \end{bmatrix}
\end{equation}. Albeit the naming conventions may not be the best, but you get
the idea. This seems much more intuitive than the typical vector operation
scheme (imo).

\begin{research}
    Differentially private training of a neural network $f_{\theta}$ requires
    bounding the sensitivity of the gradient defined by 
    \begin{equation} \label{eq:gradw_norm}
        \norm*{\left[\left(\mat{W}^{(\ell+1)}\right)^{\intercal}\pdv{L}{\vec{z}^{(\ell+1)}}
        \odot \phi'(\vec{z}^{(\ell)})\right]
        \left(\vec{h}^{(\ell-1)}\right)^\intercal}_{\mathsf{F}}
    \end{equation}. The Gradient Clipping Technique~\autocite{deep} rescales the
    gradient as follows:
    \begin{equation}
        \bar{\vec{g}} = \min\{1, C /\norm{\vec{g}}_2\} \cdot \vec{g}
    \end{equation}, where $\vec{g}$ is the vectorized gradient and $C$ is a
    clipping threshold. Is there a way to analytically bound the norm of
    gradient in Equation~\ref{eq:gradw_norm} so that we don't have to modify the
    gradient during the backward step?


\end{research}
