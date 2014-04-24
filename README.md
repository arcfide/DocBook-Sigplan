# Docbook XSL for Sigplan

Many conferences utilize the ACM SigPlan Proceedings style of article,
but unfortunately, those who wish to author articles in a semantic, well
structured manner have had almost no options. The default and de facto
standard format comes from a LaTeX class file, which defines through
implementation the specific style desired. An additional Word document
exists which allows one to utilize Word for writing these articles, but
this seems more a step backwards than forwards.

DocBook-Sigplan attempts to alleviate this need by delivering an open
source, compatible stylesheet for processing DocBook v5 documents into
SigPlan style through FOP using FO-XSL. Users of this style sheet have
access to the full range of DocBook's benefits, including rigorous
semantic markup and clearer solutions for common article writing needs,
without as much copy and paste involved in the authoring of specific
elements of your article. It uses a completely open-source stack for
this, and also allows better automatic processing and output formats
than LaTeX.

Information on writing and using DocBook can be found at the 
[DocBook](http://www.docbook.org) website.

## How to use

1. Author your conference, workshop, or journal article using the
   DocBook article component.

2. Us the included configuration file, stylesheet, and template to
   process your document and produce a PDF. The stylesheet requires some
   modification to suit your installation environment and your choice of
   fonts and font size.
   
### Installing a working DocBook environment

To be written.

### Customizing your stylesheet

To be written.

## Known Issues

The issues listed below occur because of limitations in the underlying
rendering stack used by the DocBook Sigplan stylesheets, namely, FOP, or
some other component. They are fixable, but at a fairly high price, and
so semi-automated or manual workarounds generally must be used. There
may be other minor issues in the stylesheets which exist as a result of
not being fully stable and complete yet, but these should be addressed
over time, and we intend to take care of them.

* The FOP system as it is written now does not support the use of floats, 
  which makes it difficult to handle the copyright information on the
  front page. In order to work with the copyright information, an
  additional processing pass on the intermediate format produced by FOP
  must adjust the first column of the first page, which FOP cannot do by
  itself.
  
* Because of the issues with float handling in the FOP system, the placement 
  of figures in DocBook Sigplan requires a little more care, as you
  cannot float figures. In practie the results are actually quite good,
  but this might not be acceptable for everyone. Commercial FOP
  processors do not have this issue.
  
* Wide figures (pgwide attributes on things like tables and figures) that 
  span two columns of text cannot appear inside of a section, but must
  occur on section boundaries because of a limitation in the handling of
  nested `fo:block` elements created by the stylesheets in FOP. To use
  wide figures, you should place them outside of section boundaries.

## Alternatives

Another alternative is to use the db2latex program to convert the
DocBook document into a LaTeX file first and then to use the Sigplan
LaTeX class file.
