#!/usr/bin/python3

import os
import shutil

print(os.getcwd())
os.symlink('lincolntex/Makefile', 'Makefile')
os.symlink('lincolntex/gitignore-project', '.gitignore')
shutil.copyfile('lincolntex/report.tex', 'report.tex')
shutil.copyfile('lincolntex/lincoln.cls', 'lincoln.cls')
open('report.bib', 'a').close()
os.makedirs('images')
