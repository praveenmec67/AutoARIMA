import pandas as pd
import numpy as  np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.preprocessing import *
from sklearn.metrics import *
import datetime as dt
import scipy as sc
import statsmodels.api as sm
from math import sqrt
from sklearn.metrics import mean_squared_error
from sklearn.metrics import mean_absolute_error
from sklearn.externals import joblib
import pmdarima as pm

i=input('Enter the State/Department/Ministry for which the grievances need to be predicted: ')
n=int(input('Enter the number of months for which the grievances count need to be predicted: '))
source=joblib.load(i+'.h5')
forecast=source.predict(n_periods=n)
print(forecast)