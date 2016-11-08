import numpy as np
from matplotlib import pyplot as plt

print "Hello World!"

A = np.linspace(0,100)
B = np.logspace(2,0)

plt.plot(A,B)
plt.show()