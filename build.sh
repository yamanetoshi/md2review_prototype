#!/bin/bash

FILE=20130621.mgw
YAML=sample.yml
rm *~ *.html *.re

md2review $FILE.md > $FILE.re
review-compile --target=html $FILE.re > $FILE.html
review-pdfmaker $YAML
