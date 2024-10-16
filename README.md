

# Use mitex for Typst Math with Quarto

> [!WARNING]
>
> Experimental extension

This is a Quarto extension that provides support for using the
[Mitex](https://typst.app/universe/package/mitex/) Typst library to
render mathematical expressions.

## Installing

``` bash
quarto add quarto-ext/mitex
```

This will install the extension under the `_extensions` subdirectory. If
you’re using version control, you will want to check in this directory.

## Using

To use the extension, add the following to your Quarto document:

``` yaml
filters: 
  - mitex
```

## Example

Here is the source code for a minimal example:
[example.qmd](example.qmd).

``` markdown
---
Title: Math in Typst rendered through Mitex
format: typst
filters: 
  - mitex
keep-typ: true
---

This a Typst document with a simple inline LaTeX equation $\hat{F}$ and a complicated LaTeX block equation:

$$
\begin{align*}
\mathcal{\tilde{L}}^{(k)}
&= \sum_{j=1}^{T} \sum_{i\in I_j} \Bigl[g_i f_k(\mathbf{x}_i) &+ \frac{1}{2} h_i f^2_k(\mathbf{x}_i)\Bigr] &+ \gamma T + \frac{1}{2} \lambda \sum_{j=1}^T w_j^2 \\
&= \sum_{j=1}^{T} \sum_{i\in I_j} \Bigl[g_i w_j &+ \frac{1}{2} h_i w_j^2\Bigl] &+ \gamma T + \frac{1}{2} \lambda \sum_{j=1}^T w_j^2 \\
&= \sum^T_{j=1} \Bigl[w_j\Bigl(\sum_{i\in I_j} g_i\Bigr) &+ \frac{1}{2} w_j^2 \Bigl(\sum_{i\in I_j} h_i + \lambda\Bigr) \Bigr] &+ \gamma T  \label{eq:dudu}
\end{align*}
$$
```

- Inline Math will be wrapped in a Typst RawInline using `#mi()`
- Display Math will be transformat to Typst RawBlock using `#mitex()`

See built [PDF](https://quarto-ext.github.io/mitex) and [source
`.typ`](https://quarto-ext.github.io/mitex/example.typ)
