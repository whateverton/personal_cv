#!/usr/bin/python
# -*- coding: UTF-8 -*-

import os
import subprocess
from shutil import copyfile

import pdb; pdb.set_trace()

if __name__ == '__main__':
    languages = ['portuguese', 'english', 'french']
    name = 'EvertonAndradeVilela'

    CV_EXT = '.pdf'
    CV_FILE_BASE = name + '-'

    for language in languages:
        print ('Generating ' + language.capitalize() + ' CV'+ '...')

        subprocess.check_output(['pdflatex', '"\def\doclanguage{' + language + '} \input{main.tex}"', '-output-directory=' + language, '-jobname=' + CV_FILE_BASE + language])
        copyfile (language + '\\' + CV_FILE_BASE + language + CV_EXT, CV_FILE_BASE + language + CV_EXT)
        
        print (language.capitalize() + ' CV generated successfully!\n')
