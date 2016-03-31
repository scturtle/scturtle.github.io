---
title: Parallel in Python
tags: python
---

Multithreading and multiprocessing can be very easy in python !   
Following tests are processed on a machine with 24 cores.

The original program:

```python
from math import factorial
print sum(factorial(i)%1000 for i in xrange(6000)) % 1000

# $ time pypy test.py
# 314
# 
# real    0m18.202s
# user    0m18.099s
# sys     0m0.057s
```

With [`multiprocessing`](http://docs.python.org/2/library/multiprocessing.html):

```python
from math import factorial
from multiprocessing import Pool
# from multiprocessing.dummy import Pool  # but using threads

pool = Pool()
print sum(pool.imap_unordered(lambda n: factorial(n)%1000, xrange(6000))) % 1000

pool.close()
pool.join()

# $ time pypy test2.py
# 314
# 
# real    0m5.545s
# user    0m41.953s
# sys     0m0.986s
```

With [`concurrent.futures`](http://docs.python.org/3.4/library/concurrent.futures.html) ([Backport in 2.7](https://pypi.python.org/pypi/futures)):

```python
from math import factorial
import futures  # <= 2.7
# from concurrent import futures  # >= 3.2

# with futures.ThreadPoolExecutor() as executor:
with futures.ProcessPoolExecutor() as executor:
    print sum(executor.map(lambda n: factorial(n)%1000, xrange(6000))) % 1000

# $ time pypy test3.py
# 314
# 
# real    0m6.804s
# user    0m45.791s
# sys     0m1.409s
```
