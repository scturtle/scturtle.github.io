---
title: 用 Coq 来证明“今天”是周几
tags: other
---

据说最近有道逻辑题在微博上挺火的：

> 如果昨天是明天的话就好了，这样今天就是周五了。 句中今天是周几？

<del>居然还有争议？当然是周三啊摔！</del>
好吧，脑洞打开的话，确实可以有另一种理解。
拿 [Coq](http://zh.wikipedia.org/zh/Coq) 来证明下：

星期几的定义：
```coq
Inductive day : Type :=
  | monday : day
  | tuesday : day
  | wednesday : day
  | thursday : day
  | friday : day
  | saturday : day
  | sunday : day.
```

昨天和明天的定义其实都是函数（更严格来说应该是双射，不过足够了）：
```coq
Definition next (d:day) : day :=
  match d with
  | monday    => tuesday
  | tuesday   => wednesday
  | wednesday => thursday
  | thursday  => friday
  | friday    => saturday
  | saturday  => sunday
  | sunday    => monday
  end.

Definition prev (d:day) : day :=
  match d with
  | monday    => sunday
  | tuesday   => monday
  | wednesday => tuesday
  | thursday  => wednesday
  | friday    => thursday
  | saturday  => friday
  | sunday    => saturday
  end.
```

开始证明。因为数学上不可能有 `昨天 = 明天`，所以实际上可以存在两种理解：   
`(想象中今天的)昨天 = (实际的今天的)明天` 和 `(实际今天的)昨天 = (想象中今天的)明天`。

第一种比较符合多数人的理解：
```coq
Lemma today_is_wednesday :
  forall today real_today,
  (* (想象中今天的)昨天 = (实际的今天的)明天 *)
    prev today = next real_today ->
  (* (想象中的)今天 = 星期五 *)
    today = friday ->
  (* 那么，(实际的)今天 = 星期三 *)
    real_today = wednesday.
Proof.
  intros. subst. destruct real_today; inversion H. reflexivity.
Qed.
```

第二种脑洞打开的话也不是完全没有道理……
```coq
Lemma today_is_sunday :
  forall today real_today,
  (* (实际的今天的)昨天 = (想象中今天的)明天 *)
    prev real_today = next today ->
  (* (想象中的)今天 = 星期五 *)
    today = friday ->
  (* 那么，(实际的)今天 = 星期日 *)
    real_today = sunday.

Proof.
  intros. subst. destruct real_today; inversion H. reflexivity.
Qed.
```

证明对 Coq 来说很简单，基本上就是枚举所有可能性，要么成立要么反证法什么的，就不赘述了。
