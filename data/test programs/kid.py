import pandas as p
import numpy as n
import matplotlib.pyplot as plt


b = p.DataFrame({"Population density": [1.4, 1.3, 0.3, 0.27, 0.22, 0.21, 0.21, 0.16, 0.14, 0.13],"Population": [1380, 1400, 330, 270, 220, 210, 210, 170, 140, 130]}, index = ["India", "China", "USA", "Indonesia", "Pakistan", "Brazil", "Nigeria", "Bangladesh", "Russia", "Mexico"])
b['Population']*=100000
b = b[::-1]
c = plt.plot(b.index, b['Population'])
plt.tight_layout()
plt.show()
