#!/usr/bin/python3

import os
import os.path
import shutil

makefile_path = 'Makefile'
gitignore_path = '.gitignore'
gitattributes_path = '.gitattributes'
report_path = 'report.tex'
class_path = 'lincoln.cls'
bib_path = 'lincoln.bib'
images_path = 'images'

if not os.path.isfile(makefile_path):
    os.symlink('lincolntex/Makefile', makefile_path)

if not os.path.isfile(gitignore_path):
    os.symlink('lincolntex/gitignore-project', gitignore_path)

if not os.path.isfile(gitattributes_path):
    os.symlink('lincolntex/gitattributes-project', gitattributes_path)

if not os.path.isfile(report_path):
    shutil.copyfile('lincolntex/{}'.format(report_path), report_path)

if not os.path.isfile(class_path):
    shutil.copyfile('lincolntex/{}'.format(class_path), class_path)

if not os.path.isfile(bib_path):
    open('report.bib', 'a').close()

if not os.path.isdir(images_path):
    os.makedirs('images')
