<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-40README-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

# reblocks-lass - A helper for Reblocks framework to define CSS dependencies in LASS syntax.

<a id="reblocks-lass-asdf-system-details"></a>

## REBLOCKS-LASS ASDF System Details

* Description: A helper for Reblocks framework to define `CSS` dependencies in `LASS` syntax.

* Licence: Unlicense

* Author: Alexander Artemenko <svetlyak.40wt@gmail.com>

* Homepage: [https://40ants.com/reblocks-lass/][2335]

* Bug tracker: [https://github.com/40ants/reblocks-lass/issues][a44f]

* Source control: [GIT][293b]

* Depends on: [lass][7e98], [reblocks][184b]

[![](https://github-actions.40ants.com/40ants/reblocks-lass/matrix.svg?only=ci.run-tests)][3d0e]

![](http://quickdocs.org/badge/reblocks-lass.svg)

<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-3A-40INSTALLATION-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Installation

You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :reblocks-lass)
```
<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-3A-40USAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Usage

`TODO`: Write a library description. Put some examples here.

<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-3A-40API-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## API

<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-3A-40REBLOCKS-LASS-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### REBLOCKS-LASS

<a id="x-28-23A-28-2813-29-20BASE-CHAR-20-2E-20-22REBLOCKS-LASS-22-29-20PACKAGE-29"></a>

#### [package](cda1) `reblocks-lass`

<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-LASS-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-3A-40REBLOCKS-LASS-24LASS-DEPENDENCY-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### LASS-DEPENDENCY

<a id="x-28REBLOCKS-LASS-3ALASS-DEPENDENCY-20CLASS-29"></a>

###### [class](1cee) `reblocks-lass:lass-dependency` (local-dependency)

Keeps `CSS` code, created using [`make-dependency`][e5b1] function.

**Readers**

<a id="x-28REBLOCKS-LASS-3ACSS-CODE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20REBLOCKS-LASS-3ALASS-DEPENDENCY-29-29"></a>

###### [reader](a241) `reblocks-lass:css-code` (lass-dependency) (:css)

<a id="x-28REBLOCKS-LASS-DOCS-2FINDEX-3A-3A-7C-40REBLOCKS-LASS-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28REBLOCKS-LASS-3AMAKE-DEPENDENCY-20FUNCTION-29"></a>

##### [function](a68b) `reblocks-lass:make-dependency` lass-code

This function creates Reblocks dependency with `CSS` style described in `LASS` `DSL`.

You can use this dependency in a method of [`reblocks/dependencies:get-dependencies`][0fcf] generic-function like this:

```lisp
(defmethod reblocks/dependencies:get-dependencies ((widget source-widget))
  (append
   (list
    (reblocks-lass:make-dependency
      `(.source-widget
        :border-top "2px solid #cc4b37"
        (input :margin 0)
        (.dist :margin-right 1em)
        (.label-column :white-space "nowrap"
                       :vertical-align "top")
        (.field-column :width "100%")
        ((:and .dist .disabled) :color "gray")

        ((.source-controls > (:or form input))
         :display "inline-block"
         :margin-left 1em)
        (.error :color "red"))))
   (call-next-method)))
```

[2335]: https://40ants.com/reblocks-lass/
[e5b1]: https://40ants.com/reblocks-lass/#x-28REBLOCKS-LASS-3AMAKE-DEPENDENCY-20FUNCTION-29
[0fcf]: https://40ants.com/reblocks/dependencies/#x-28REBLOCKS-2FDEPENDENCIES-3AGET-DEPENDENCIES-20GENERIC-FUNCTION-29
[293b]: https://github.com/40ants/reblocks-lass
[3d0e]: https://github.com/40ants/reblocks-lass/actions
[cda1]: https://github.com/40ants/reblocks-lass/blob/b1430f10506c816655fc6daac331b2fc99d8f886/src/core.lisp#L1
[1cee]: https://github.com/40ants/reblocks-lass/blob/b1430f10506c816655fc6daac331b2fc99d8f886/src/core.lisp#L19
[a241]: https://github.com/40ants/reblocks-lass/blob/b1430f10506c816655fc6daac331b2fc99d8f886/src/core.lisp#L20
[a68b]: https://github.com/40ants/reblocks-lass/blob/b1430f10506c816655fc6daac331b2fc99d8f886/src/core.lisp#L40
[a44f]: https://github.com/40ants/reblocks-lass/issues
[7e98]: https://quickdocs.org/lass
[184b]: https://quickdocs.org/reblocks

* * *
###### [generated by [40ANTS-DOC](https://40ants.com/doc/)]
