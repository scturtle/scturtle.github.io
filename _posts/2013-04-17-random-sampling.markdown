---
layout: page
title: Random Sampling
---

Given a set of items, choosing random one with equal probability can be done by `random.choice(items)`.
But what if we are given items one by one without knowing the length of the whole set?

There is a simple algorithm: For the $k$-th item, we give up previous selection and choose this one with probability $\frac 1 k$.
Proof as follows: If we select the $k$-th item, it means that we choose it with probability $\frac 1 k$ and give up all successors. 
Product of probabilities of all these choices is:

$$ p_k = \frac 1 k \times \frac {k} {k+1} \times \cdots \times \frac {n-2}{n-1} \times \frac {n-1} n = \frac 1 n $$

Codes in Python:

```python
import random

def choice(items):
    selection = None
    for i, item in enumerate(items):
        if random.randint(0, i) == 0:
            selection = item
    return selection
```

We can generalize this algorithm. For a set of items, each one is associated with a weight $w_i$.
Our goal is to select a random one based on its weight ratio.
The algorithm is similar to the previous one: For the $k$-th item, replace the current selection with it with probability $\frac {w_k} {\sum_{i=1}^k w_i}$.
Proof is analogical:

$$p_k = \frac {w_k} {\sum_{i=1}^k w_i} \times \frac {\sum_{i=1}^k w_i} {\sum_{i=1}^{k+1} w_i} 
\times \cdots \times \frac {\sum_{i=1}^{n-2} w_i} {\sum_{i=1}^{n-1} w_i} \times \frac {\sum_{i=1}^{n-1} w_i} {\sum_{i=1}^{n} w_i} = \frac {w_k} {\sum_{i=1}^n w_i}$$

Codes in Python:

```python
def weightedChoice(items, weights):
    selection = None
    total_weight = 0.0
    for item, weight in zip(items, weights):
        total_weight += weight
        if random.random() * total_weight < weight:
            selection = item
    return selection
```

There is another amazing method to do this weighted random sampling:
For each item, get a random $r_i \in [0, 1]$,
and *reweight* this item as $w'_i = r_i^{1 / {w_i}}$.
Then we can select the one with the top new weight. Proof of this is a bit annoying.

If we choose the $i$-th item at last, this means $\forall j\neq i, w'_j <w'_i$. As $r_i \in [0, 1]$, the probability is:

$$ p_i = \int_0^1 p(\forall j\neq i, w'_j <w'_i)\ \mathrm{d}\ r_i $$

$r_j$ is independent with each other. So:

$$ p_i = \int_0^1 \prod_{j \neq i} p(w'_j <w'_i)\ \mathrm{d} \ r_i $$

As $r_j \in [0, 1]$, the inner probability can be simplified as:

$$ p(w'_j <w'_i) = p(r_j^{1 / w_j} < r_i^{1 / w_i}) = p(r_j < r_i^{w_j / w_i}) = r_i^{w_j / w_i} $$

So:

$$ p_i = \int_0^1 \prod_{j \neq i} r_i^{w_j / w_i}\ \mathrm{d}\ r_i
= \int_0^1 r_i^{(w-w_i) / w_i}\ \mathrm{d}\ r_i = \frac {w_i} w $$

Same as our expectation.

This blog is basically a summary of
[these](http://www.gocalf.com/blog/random-selection.html)
[three](http://www.gocalf.com/blog/weighted-random-selection.html)
[blogs](http://www.gocalf.com/blog/weighted-random-selection-2.html).
Refer to them for more content.
