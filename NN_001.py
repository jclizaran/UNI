# -*- coding: utf-8 -*-
"""
Created on Fri Nov 12 19:12:35 2021

@author: jclizaran
"""

import os
import pandas as pd

os.chdir(r'B:\Basura\Master UNED\NN_FOR_NLP\Tema 1\Dataset_reviews\Dataset_reviews')
print(os.listdir())

dt_train = pd.read_csv('train_reviews.csv')
dt_test = pd.read_csv('test_reviews.csv')