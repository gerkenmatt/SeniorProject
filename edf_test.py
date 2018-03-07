import os

import matplotlib.pyplot as plt
import numpy as np
import pyedflib


fname = os.path.join(os.path.dirname(__file__), 'S001R02.edf')
f = pyedflib.EdfReader(fname)
x = f.readSignal(0,0,900)
print (int(x.shape[0]))
x2 = f.readSignal(0)
print (int(x2.shape[0]))



plt.plot(x)
plt.show()


f._close()
del f

