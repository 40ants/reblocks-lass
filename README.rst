===============
 reblocks-lass
===============

.. insert-your badges like that:

.. image:: https://travis-ci.org/40ants/reblocks-lass.svg?branch=master
    :target: https://travis-ci.org/40ants/reblocks-lass

.. Everything starting from this commit will be inserted into the
   index page of the HTML documentation.
.. include-from

A utility system to define Reblocks dependencies as code in Lass
syntax.

Reasoning
=========

Sometimes it is easier to write CSS rules in lisp using full power of Lisp.

.. code-block:: common-lisp

   (defvar log-item '(:|@message| "Some"
                      :|@timestamp| 122434342
                      ;; this field is wrong and
                      ;; shouldn't be here
                      :|@fields| nil))

Roadmap
=======

* Add some kind of ability to reuse Lass rules among different widgets.

.. Everything after this comment will be omitted from HTML docs.
.. include-to

Building Documentation
======================

To use this library:

* load it with ``(ql:quickload :reblocks-lass)``;
* define a dependency:

  TODO: add code snippet

How to build documentation
--------------------------

To build documentation, you need a Sphinx. It is
documentaion building tool written in Python.

To install it, you need a virtualenv. Read
this instructions
`how to install it
<https://virtualenv.pypa.io/en/stable/installation/#installation>`_.

Also, you'll need a `cl-launch <http://www.cliki.net/CL-Launch>`_.
It is used by documentation tool to run a script which extracts
documentation strings from lisp systems.

Run these commands to build documentation::

  virtualenv env
  source env/bin/activate
  pip install -r docs/requirements.txt
  invoke build_docs

These commands will create a virtual environment and
install some python libraries there. Command ``invoke build_docs``
will build documentation and upload it to the GitHub, by replacing
the content of the ``gh-pages`` branch.

