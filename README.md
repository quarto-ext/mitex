

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
