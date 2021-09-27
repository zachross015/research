I find abstract algebra absolutely fascinating. Today, I was reading a bit of
the Dummit and Foote textbook and came across the problem: 

\begin{proposition}
    If $\sigma \in \text{Aut}(G)$ and $\phi_g$ is conjugation by $g$ prove
    $\sigma\phi_g\inv{\sigma} = \phi_{\sigma(g)}$.   
\end{proposition}
I specifically find this fascintating because we are talking about the
transformation of a function itself, and this is an algebra which can accomplish
this. I'll leave my proof for this statement here:
\begin{proof}
    Let $h \in G$ and note that there is exactly one $k \in G$ such that
    $\sigma(g) = k$ since $\sigma$ is an automorphism of $G$. Then
    \begin{equation*}
        \begin{aligned}
            \sigma \phi_g \inv{\sigma}(\sigma(h)) &= \sigma\phi_g(h)
            \\ &= \sigma(gh\inv{g})
            \\ &= \sigma(g)\sigma(h)\sigma(\inv{g}) 
            \\ &= \sigma(g)\sigma(h)\inv{\sigma(g)}
            \\ &= \phi_{\sigma(g)}(\sigma(h))
        \end{aligned}
    \end{equation*}.   
\end{proof}
 Isn't that just beautiful? The way that all of these operations naturally
 follow from the fact that $\sigma$ is an automorphism and therefore a
 homomorphism, allowing us to use all these cool properties that were proved
 much earlier. Fucking beautiful.
