#!/bin/sh
git clone https://github.com/sourcecred/template-instance.git
mv README.md README2.md
cp -r template-instance/* .
mv README.md Sourcred-README.md
mv README2.md README.md