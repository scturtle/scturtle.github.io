+++
title = '《Software Engineering at Google》笔记'
date = 2022-03-05T08:00:00+08:00
+++

# O. 前言

> The great thing about tech is that there is never only one way to do something. Instead, there is a series of trade-offs we all must make depending on the circumstan‐ ces of our team and situation.
> 技术的伟大之处在于，做一件事从来没有唯一的方法。相反，我们必须根据我们的团队和处境来做一系列的权衡。

> Of course, Google is a unique company, and it would be foolish to assume that the right way to run your software engineering organization is to precisely copy their formula.
> 当然，谷歌是一家独特的公司，如果认为运行你的软件工程组织的正确方法是精确地复制他们的公式，那就太愚蠢了。


# I. 理论

## 1. 什么是软件工程

> Within Google, we sometimes say, “Software engineering is programming integrated over time.”
> 在谷歌，我们有时会说，"软件工程是对时间积分的编程"。

> Software engineering is the set of policies, practices, and tools that are necessary to make that code useful for as long as it needs to be used and allowing collaboration across a team.
> 软件工程是一套必要的政策、实践和工具，以使这些代码在需要使用的时间内发挥作用，并允许整个团队的协作。

> Your project is **sustainable** if, for the expected life span of your software, you are capable of reacting to whatever valuable change comes along, for either technical or business reasons.
> 如果在软件的预期寿命内，你有能力对由于技术或商业原因而出现的任何有价值的变化做出反应，你的项目就是**可持续的**。

衡量代码的预期寿命做不同的选择。

> Hyrum’s Law: With a sufficient number of users of an API, it does not matter what you promise in the contract: all observable behaviors of your system will be depended on by somebody.
> 海勒姆法则：当一个API的用户数量足够多时，你在合同中承诺什么并不重要，你的系统的所有可观察到的行为都会被某人所依赖。

> “It’s program‐ ming if ‘clever’ is a compliment, but it’s software engineering if ‘clever’ is an accusation.”
> "如果'聪明'是一种赞美，那就是编程，但如果'聪明'是一种指责，那就是软件工程。"

> The health of an organization isn’t just whether there is money in the bank, it’s also whether its members are feeling valued and productive.
> 一个组织的健康不仅仅是银行里是否有钱，还包括其成员是否感觉到被重视和亲和力。


# II. 文化

## 2. 团队工作

> The Three Pillars of Social Interaction: **humility, respect, trust**.
> 社会交往的三大支柱：**谦逊、尊重、信任**。

Insecurity. 不安全感。

Genius Myth. 天才神话。

> Being a genius is most definitely not an excuse for being a jerk: anyone—genius or not—with poor social skills tends to be a poor teammate. The vast majority of the work at Google (and at most companies!) doesn’t require genius-level intellect, but 100% of the work requires a minimal level of social skills. What will make or break your career, especially at a company like Google, is how well you collaborate with others.
> 作为一个天才，绝对不是成为一个混蛋的借口：任何一个人--无论是否是天才--如果社交能力差，往往会成为一个糟糕的团队伙伴。在谷歌（以及大多数公司！），绝大多数工作都不需要天才级别的智力，但100%的工作都需要最低水平的社交技能。决定你职业生涯成败的，尤其是在谷歌这样的公司，是你与他人合作的程度。

Hiding considered harmful.

> Bus factor: the number of people that need to get hit by a bus before your project is completely doomed.
> 公交车因子：在你的项目完全失败之前，需要被公交车撞到的人数。

> In the same way, your self-worth shouldn’t be connected to the code you write—or any creative project you build. To repeat ourselves: you are not your code. Say that over and over. You are not what you make. You need to not only believe it yourself, but get your coworkers to believe it, too.
> 同样，你的自我价值不应该与你写的代码--或你建立的任何创造性项目相联系。重复我们的观点：你不是你的代码。反复说这句话。你不是你做的东西。你不仅要自己相信这一点，还要让你的同事也相信这一点。

> At Google, one of our favorite mottos is that “Failure is an option.” 
> 在谷歌，我们最喜欢的格言之一是："失败是一种选择"。

Blameless post-mortem culture.

## 3. 知识传播

> Single point of failure (SPOF): A bottleneck that occurs when critical information is available from only a single person.
> 单点故障 (SPOF)：当关键信息只能从一个人那里获得时，就会出现瓶颈。

> Haunted graveyards: Places, often in code, that people avoid touching or changing because they are afraid that something might go wrong.
> 闹鬼的坟场：场所，通常是代码，人们避免接触或改变，因为他们担心会出问题。

> **Psychological safety** is critical to promoting a learning environment. … An enormous part of learning is being able to try things and feeling safe to fail. In a healthy environment, people feel comfortable asking questions, being wrong, and learning new things.
> **心理安全**是促进学习环境的关键。......学习的一个重要部分是能够尝试事物，并感觉到失败的安全。在一个健康的环境中，人们对提出问题、犯错和学习新事物感到很舒服。

> Impostor syndrome is not uncommon among high achievers, and Googlers are no exception—in fact, a majority of this book’s authors have impostor syndrome. We acknowledge that fear of failure can be difficult for those with impostor syndrome and can reinforce an inclination to avoid branching out.
> 冒名顶替综合症在高成就者中并不少见，Googlers也不例外--事实上，本书的大部分作者都有冒名顶替综合症。我们承认，对失败的恐惧对那些有冒名顶替综合症的人来说是很困难的，并且会加强避免分支的倾向。

> Consider the principle of “Chesterson’s fence”: before removing or changing something, first understand why it’s there.
> For the sake of simplicity, a fence or gate erected across a road. The more modern type of reformer goes gaily up to it and says, “I don’t see the use of this; let us clear it away.” To which the more intelligent type of reformer will do well to answer: “If you don’t see the use of it, I certainly won’t let you clear it away. Go away and think. Then, when you can come back and tell me that you do see the use of it, I may allow you to destroy it.”
> 考虑一下 "Chesterson's fence "的原则：在移除或改变某些东西之前，首先要了解它为什么在那里。
为了简单起见，让我们说，在一条道路上竖起了栅栏或大门。比较现代的改革者高高兴兴地走到它面前，说："我不知道这有什么用；让我们把它清除掉。" 对此，更聪明的改革者会很好地回答。"如果你看不到它的用处，我当然不会让你清除它。走吧，好好想想。然后，当你能回来告诉我你确实看到了它的用途时，我可能会允许你销毁它。"

Different forms of community-based learning: group chats, mailing lists, and question-and-answer systems.

> In Google’s early days, Craig Silverstein (employee ID #3) would sit down in person with every new hire and do a line-by-line “readability review” of their first major code commit.
> 在谷歌的早期，克雷格-西尔弗斯坦（雇员编号3）会和每个新雇员坐下来，对他们的第一次主要代码提交进行逐行的 "可读性审查"。


## 4. Equity & Diversity

略。

## 5. 领导力

> At Google, we recognize two different leader‐ ship roles. A Manager is a leader of people, whereas a Tech Lead leads technology efforts.
> 在谷歌，我们承认两种不同的领导角色。经理是人的领导者，而技术负责人则领导技术工作。

> Most TLs are also individual contributors, which often forces them to choose between doing something quickly themselves or delegating it to a team member to do (sometimes) more slowly.
> 大多数 TL 也是个人贡献者，这往往迫使他们在自己快速做某事或委托团队成员更慢地做（有时）之间做出选择。

> Whether or not they’re officially appointed, someone needs to get into the driver’s seat if your product is ever going to go anywhere, and if you’re the motivated, impa‐ tient type, that person might be you. You might find yourself sucked into helping your team resolve conflicts, make decisions, and coordinate people. It happens all the time, and often by accident. Maybe you never intended to become a “leader,” but somehow it happened anyway. Some people refer to this affliction as “manageritis.”
> 无论他们是否被正式任命，如果你的产品要发展，就需要有人进入驾驶座，如果你是那种有动力、有影响力的人，这个人可能就是你。你可能会发现自己被吸进了帮助你的团队解决冲突、做出决定和协调人员的行列。这种情况一直在发生，而且往往是偶然发生的。也许你从未想过要成为一个 "领导者"，但不知何故，它还是发生了。有些人把这种痛苦称为 "经理炎"。

> “Peter Principle,” which states that “In a hierarchy every employee tends to rise to his level of incompetence.”
>  "彼得原理"，它指出："在一个等级制度中，每个员工都倾向于上升到他不能胜任的水平。"

Servant Leadership. 仆人式领导。

> The best advice I received when I first became a manager at Google was from Steve Vinter, an engineering director at the time. He said, “Above all, resist the urge to manage.”
> 当我第一次在谷歌成为一名经理时，我得到的最好的建议是来自当时的工程总监史蒂夫-温特。他说："首先，要抵制管理的冲动"。

> The only managing that a servant leader does is to manage both the technical and social health of the team.
> 仆人式领导所做的唯一管理就是管理团队的技术和社会健康。

反模式：
* 雇用你可以推来推去的人。
* 忽略表现不佳者。
* 忽视非技术的问题。
* 成为每个人的朋友。
* 妥协聘用标准。
* 微观管理。

> “Sometimes you get to be the tooth fairy, other times you have to be the dentist.”
> "有些时候你可以成为牙仙，有些时候你必须成为牙医"。

正模式：
* 丢掉自我。
* 成为一名禅师。
* 成为催化剂。
* 消除路障。
* 成为一名教师和辅导员（mentor）。
* 设定明确的目标。
* 诚实待人。
* 跟踪幸福度。（平均分配杂事。）

> Be kind and empathetic when delivering constructive criticism without resorting to the com‐ pliment sandwich. 
> 在提出建设性的批评时，要有善意和同情心，不要诉诸于赞美的三明治。

> Every time a decision is made, it’s like a train coming through town—when you jump in front of the train to stop it, you slow the train down and potentially annoy the engi‐ neer driving the train. A new train comes by every 15 minutes, and if you jump in front of every train, not only do you spend a lot of your time stopping trains, but even‐ tually one of the engineers driving the train is going to get mad enough to run right over you. So, although it’s OK to jump in front of some trains, pick and choose the ones you want to stop to make sure you’re stopping only the trains that really matter.
> 每次做出决定时，就像一列火车驶过城镇--当你跳到火车前面去阻止它时，你会使火车减速，并可能惹恼驾驶火车的工程师。每15分钟就会有一列新的火车经过，如果你在每一列火车前都跳过去，你不仅要花很多时间来阻止火车，甚至可能有一个驾驶火车的工程师会生气到从你身上碾过。因此，尽管跳到一些火车前面是可以的，但要挑选你想停的火车，以确保你只停那些真正重要的火车。

小技巧：
* 委托，但要弄脏自己的手。
* 寻求取代自己。
* Know when to make waves.
* 保护你的团队免受混乱之苦。
* 为你的团队提供空中掩护。
* 当你的团队做得很好时，让他们知道。
* It’s easy to say “yes” to something that’s easy to undo.

> If you’ve been leading teams for a while or if you pick up a new team, one of the easiest ways to gain the team’s respect and get up to speed on what they’re doing is to get your hands dirty—usually by taking on a grungy task that no one else wants to do.
> 如果你已经领导了一段时间的团队，或者你接手了一个新的团队，那么获得团队的尊重和了解他们正在做的事情的最简单的方法之一就是弄脏你的手--通常是承担一个别人不愿意做的肮脏的任务。

> Remember that some people prefer to just be high-performing individual contributors, and that’s OK. We’ve always been amazed at companies that take their best engineers and—against their wishes—throw these engineers into management roles. This usually subtracts a great engineer from your team and adds a subpar manager.
> 请记住，有些人更愿意成为高绩效的个人贡献者，这也是可以的。我们一直对一些公司感到惊讶，这些公司把他们最优秀的工程师，违背他们的意愿，把这些工程师扔到管理岗位上。这通常会从你的团队中减少一名优秀的工程师，而增加一名不合格的经理。

Dan Pink 的关于（内在、外在）驱动力的 [TED 演讲](https://www.ted.com/talks/dan_pink_the_puzzle_of_motivation)。

> You can increase intrinsic motivation by giving people three things: autonomy, mastery, and purpose.
> 你可以通过给予人们三样东西来提高内在动机：自主权、掌握权和目的性。


## 6. 领导力规模化

> That is, you’re less and less able to get into the technical or engineering details of things, and you’re being pushed to go “broad” rather than “deep.” At every step, this process is frustrating: you mourn the loss of these details, and you come to realize that your prior engineering expertise is becoming less and less relevant to your job. Instead, your effectiveness depends more than ever on your general technical intu‐ ition and ability to galvanize engineers to move in good directions.
> 也就是说，你要解决的问题的范围变得更大、更抽象。你逐渐被迫变得 "更高层次"。也就是说，你越来越无法深入了解事情的技术或工程细节，你被逼着去 "广泛 "而不是 "深入"。在每一个步骤中，这个过程都是令人沮丧的：你为这些细节的丧失感到悲哀，你逐渐意识到你以前的工程专业知识与你的工作越来越不相关。相反，你的效率比以往任何时候都更依赖于你的一般技术直觉和激励工程师向好的方向发展的能力。

> “the three Always of leadership”: Always Be Deciding, Always Be Leaving, Always Be Scaling.
> "领导力的三个总是"：总是在做决定，总是在离开，总是在扩展。

> It’s easy for imposter syndrome to kick in at this point. One technique for fighting the feeling that you don’t know what you’re doing is to simply pretend that some expert out there knows exactly what to do, and that they’re simply on vacation and you’re temporarily subbing in for them. It’s a great way to remove the personal stakes and give yourself permission to fail and learn.
> 在这一点上，冒名顶替综合症很容易发作。与你不知道自己在做什么的感觉作斗争的一个技巧是，简单地假装外面的某个专家完全知道该怎么做，而他们只是在度假，你只是暂时代替他们而已。这是一个消除个人利害关系的好方法，允许自己失败和学习。

> You’ve been given a new problem, but (usually) not more people. Somehow you need to solve both problems now, which likely means that the original problem still needs to be managed with half as many people in half the time. You need the other half of your people to tackle the new work! We refer to this final step as the compression stage: you’re taking everything you’ve been doing and compressing it down to half the size.
> 你得到了一个新的问题，但（通常）没有更多的人。你现在需要同时解决这两个问题，这可能意味着原来的问题仍然需要用一半的人在一半的时间内解决。你需要另一半的人去处理新的工作！这就是你的工作。我们把这最后一步称为压缩阶段：**你要把你一直在做的事情，压缩到一半的规模。**

> I have two kinds of problems, the urgent and the important. The urgent are not impor‐ tant, and the important are never urgent.
> 我有两种问题，紧急的和重要的。紧急的问题并不重要，而重要的问题却从不紧急。

>  Instead, mindfully identify the balls that strictly fall in the top 20%—critical things that only you can do—and focus strictly on them. Give yourself explicit permission to drop the other 80%.
>   相反，要有意识地识别那些严格意义上属于前20%的球--只有你能做的关键事情--并严格专注于它们。给自己明确的许可，让自己放弃其他80%的事情。

> If something in that middle bucket is truly critical, it ends up coming back to you anyway, eventually migrating up into the top 20%.
> 如果中间的桶里的东西真的很重要，它最终还是会回到你身边，最终迁移到前20%。


## 7. 衡量生产力

> At Google, we use the Goals/Signals/Metrics (GSM) framework to guide metrics creation.
> 在谷歌，我们使用目标/信号/指标（GSM）框架来指导指标创建。

生产力五个核心（QUANTS）：
- 代码的质量
- 工程师的专注
- 心智复杂性
- 节奏和速度
- 满意度

# III. 流程

## 8. 代码风格

总体原则：
- 规则必须发挥其作用
- 针对代码读者优化
- 要有一致性
- 避免容易出错和令人惊讶的构造
- 必要时向实际情况让步

> We’d rather the code be tedious to type than difficult to read.
> 我们宁愿代码输入繁琐，而不是难以阅读。

> It’s the consistency of having one answer rather than the answer itself that is the valuable part here.
> 有价值的是拥有一个答案的一致性，而不是答案本身。

所有风格指南的规则都属于这三类：
- 避免危险的规则
- 执行最佳做法的规则
- 确保一致性的规则

> In fact, the C++ style arbiter group currently consists of four members. 
> 事实上，C++风格的仲裁员小组目前由四个成员组成。

> We use tools like clang-tidy (for C++) and Error Prone (for Java) to automate the process of enforcing rules.
> For our code, we use clang-format for C++; an in-house wrapper around yapf for Python; gofmt for Go; dartfmt for Dart; and buildifier for our BUILD files.

> At first, Go users complained about the enforced standard; now, users often cite gofmt as one of the many reasons they like Go.
> 起初，Go的用户抱怨这个强制标准；现在，用户经常把gofmt作为他们喜欢Go的众多原因之一。


## 9. 代码审查

> At Google, we use a custom code review tool, Critique, to support our process.
> 在谷歌，我们使用一个定制的代码审查工具Critique来支持我们的流程。

在谷歌，一个典型的代码审查要经过以下步骤：
- 用户创建一个变更，并上传到代码审查工具。
- 作者可以应用自动审查意见或进行自我审查。满意后发给一个或多个评审员。
- 评审员在代码评审工具中发表评论。有些评论要求明确的解决。有些仅仅是信息性的。
- 作者和评审员重复修改和反馈若干次。
- 在评审员对状态满意后，同意该修改，并将其标记为 LGTM。默认情况下，只需要一个LGTM，尽管惯例可能要求所有的评审员都同意该修改。
- 当一个变更被标记为LGTM后，作者可以将该变更提交到代码库中，前提是他们解决了所有的评论，并且该变更被批准。

> Writing entirely new code is so frowned upon that some of us have a saying: “If you’re writing it from scratch, you’re doing it wrong!”
> 编写全新的代码是非常不受欢迎的，以至于我们中的一些人有一个说法。"如果你从头开始写，你就做错了！"

审查有三个方面需要 "批准"：
- 另一位工程师对代码的正确性和理解力进行检查，确认代码是合适的，并且做了作者所声称的事情。
- 来自代码所有者之一的批准，证明该代码适合于代码库的这个特定部分。
- 由拥有语言 “可读性” 认证的人批准，代码符合语言的风格和最佳实践，检查代码是否以我们期望的方式编写。

大多数审查都是由一个人承担这三个角色，这就大大加快了审查过程。重要的是，作者也可以承担后两个角色，只需要另一个工程师的LGTM就可以将代码签入到他们自己的代码库中，前提是他们已经具备了该语言的“可读性”。

>  The primary reviewer can focus on code correctness and the general validity of the code change; the code owner can focus on whether this change is appropriate for their part of the codebase without having to focus on the details of each line of code. An approver is often looking for something different than a peer reviewer, in other words. After all, someone is trying to check in code to their project/directory. They are more concerned with questions such as: “Will this code be easy or difficult to maintain?” “Does it add to my technical debt?” “Do we have the expertise to maintain it within our team?”
>   主要审查者可以关注代码的正确性和代码修改的总体有效性；代码所有者可以关注这个修改是否适合他们的那部分代码库，而不必关注每一行代码的细节。换句话说，审批者所寻找的东西往往与同行评审者不同。毕竟，有人是想把代码签入他们的项目/目录。他们更关心的是诸如以下问题。"这段代码是容易还是难以维护？" "它是否增加了我的技术债务？" "我们的团队中是否有维护它的专业知识？"

> Specially named OWNERS files list usernames of people who have ownership respon‐ sibilities for a directory and its children.
> 特别命名的OWNERS文件列出了对一个目录及其子目录有所有权责任的人的用户名。

代码审查的好处。

> Code review processes that are heavy‐weight, or that don’t scale properly, become unsustainable.
> 沉重的代码审查过程，或者不能适当地扩展，都是不可持续的。

> To prevent the evaluation of correctness from becoming more subjective than objective, authors are generally given deference to their particular approach, whether it be in the design or the function of the introduced change. A reviewer shouldn’t propose alternatives because of personal opinion. Reviewers can propose alternatives, but only if they improve comprehension (by being less complex, for example) or functionality (by being more efficient, for example). In general, engineers are encouraged to approve changes that improve the codebase rather than wait for consensus on a more “perfect” solution. This focus tends to speed up code reviews.
> 为了防止对正确性的评价变得更加主观而不是客观，一般都会尊重作者的特定方法，无论是在设计上还是在引入的功能上的改变。评审员不应该因为个人意见而提出替代方案。评审员可以提出替代方案，但前提是这些替代方案能够改善理解性（例如，通过减少复杂性）或功能性（例如，通过更有效）。一般来说，我们鼓励工程师批准那些能够改善代码库的修改，而不是等待对一个更 "完美 "的解决方案达成共识。这种关注倾向于加快代码审查的速度。

> A code review is often the first test of whether a given change is understandable to a broader audience. This perspective is vitally important because code will be read many more times than it is written, and understanding and comprehension are critically important.
> 代码审查通常是对一个特定的变化是否能被更多人理解的第一个测试。这个观点是非常重要的，因为代码被阅读的次数要比它被写的次数多得多，而理解和领悟是非常重要的。

> Even the most capable engineers can suffer from imposter syndrome and be too self-critical. A process like code review acts as validation and recognition for one’s work.
> 即使是最有能力的工程师也会患上冒名顶替综合症，并且过于自我批判。像代码审查这样的过程是对一个人的工作的验证和认可。

> Reviewers can even mark some comments “FYI,” requiring no action; they are simply added as an aid to the author.
> 审稿人甚至可以将一些评论标记为 "仅供参考"，不需要采取任何行动；它们只是作为作者的一种帮助而添加。

> If an author can demonstrate that several approaches are equally valid, the reviewer should accept the preference of the author.
> 如果作者能证明几种方法都同样有效，评审员应接受作者的偏好。

> At Google, we expect feedback from a code review within 24 (working) hour. … Few things annoy an author more than getting feedback from a review, addressing it, and then continuing to get unrelated further feedback in the review process.
> 在谷歌，我们希望在24（工作）小时内得到代码审查的反馈。......很少有事情比从审查中得到反馈，解决它，然后继续在审查过程中得到无关的进一步反馈更让作者恼火。

> Remember that you are not your code, and that this change you propose is not “yours” but the team’s. After you check that piece of code into the codebase, it is no longer yours in any case. 
> 记住，你不是你的代码，你提出的这个修改不是 "你的"，而是团队的。在你将这段代码检入代码库之后，它无论如何都不再是你的了。

> It’s important to treat each reviewer comment within a code review as a TODO item; a particular comment might not need to be accepted without question, but it should at least be addressed. ... One common way to keep such debates civil if an author doesn’t agree with a reviewer is to offer an alternative and ask the reviewer to PTAL (please take another look).
> 重要的是要把代码审查中的每个审查者的评论当作一个TODO项目；一个特定的评论可能不需要被无条件接受，但它至少应该被解决。... 如果作者不同意评审员的意见，保持这种辩论的一个常见方法是提供一个替代方案，并要求评审员PTAL（请再看看）。

> Google’s code review process discour‐ ages massive changes consisting of fully formed projects, and reviewers can rightfully reject such changes as being too large for a single review.
> 谷歌的代码审查程序不鼓励由完全成型的项目组成的大规模修改，审查员可以正确地拒绝这种修改，因为它对一次审查来说太大。

> “Small” changes should generally be limited to about 200 lines of code. ... Most changes at Google are expected to be reviewed within about a day. (This doesn’t necessarily mean that the review is over within a day, but that initial feedback is provided within a day.) About 35% of the changes at Google are to a single file.
> 一般来说，"小 "改动应该限制在200行左右的代码。... 在谷歌，大多数的修改预计会在一天之内得到审查。(这并不一定意味着审查会在一天内结束，但初步反馈会在一天内提供）。在谷歌，大约有35%的修改是针对单一文件的。

> Because code reviews are typically small, it’s common for almost all code reviews at Google to be reviewed by one and only one person. ... It’s not uncommon for multiple people to comment on any given change — most code reviews are sent to a team member, but also CC’d to appropriate teams — but the primary reviewer is still the one whose LGTM is desired, and only one LGTM is necessary for any given change. Any other comments, though important, are still optional.
> 因为代码审查通常是小规模的，所以在谷歌，几乎所有的代码审查都是由一个人审查的，而且只有一个人。多人对任何给定的修改发表评论的情况并不少见--大多数代码审查都是发给一个团队成员，但也会抄送给适当的团队--但主要的审查者仍然是希望得到LGTM的人，而且对于任何给定的修改，只有一个LGTM是必要的。任何其他评论，尽管很重要，但仍然是可选的。


## 10. 文档

> Overall, the state of engineering documentation in the late 2010s is similar to the state of software testing in the late 1980s. 
> 总的来说，2010年代末的工程文档状况与1980年代末的软件测试状况相似。

[Docs as Code](https://www.writethedocs.org/guide/docs-as-code).

> The people who could fix the documents were not the people who used them. ... Conversely, the people best able to fix the documents often didn’t need to consult them after they were written.
> 能够修复文档的人并不是使用它们的人。... 反过来说，最能修复文件的人在文档写好后往往不需要查阅它们。

了解文档的受众。

> By keeping a document short and clear, you will ensure that it will satisfy both an expert and a novice.
> 通过保持文件的简短和清晰，你将确保它能让专家和新手都满意。

文档的类型。（API 参考，实现细节，设计文档，教学等。）

> In this author’s opinion, the quality of documentation at Google is better than in most software engineering shops.
> 在笔者看来，谷歌的文档质量要比大多数软件工程公司的好。

## 11. 测试（概览）

> The changes in GWS marked a watershed for testing culture at Google as teams in other parts of the company saw the benefits of testing and moved to adopt similar tactics.
> GWS的变化标志着谷歌测试文化的一个分水岭，因为公司其他部门的团队看到了测试的好处，并开始采用类似的策略。

> Software documentation is notoriously unreliable.
> 软件文档是出了名的不可靠。

> In brief, small tests run in a single process, medium tests run on a single machine, and large tests run wherever they want.
> 简而言之，小型测试在一个进程中运行，中型测试在一台机器上运行，而大型测试则在任何地方运行。

Flaky test are expensive.

> Our experience suggests that as you approach 1% flakiness, the tests begin to lose value. At Google, our flaky rate hovers around 0.15%, which implies thousands of flakes every day.
> 我们的经验表明，当你接近1%的 flakiness 时，测试开始失去价值。在谷歌，我们的 flakiness 徘徊在0.15%左右，这意味着每天有成千上万的 flakes。

> As a very rough guideline, we tend to aim to have a mix of around 80% of our tests being narrow-scoped unit tests that validate the majority of our business logic; 15% medium-scoped integration tests that validate the interactions between two or more components; and 5% end-to-end tests that validate the entire system. 
> 作为一个非常粗略的指导方针，我们倾向于将80%左右的测试混合为狭义的单元测试，以验证大部分的业务逻辑；15%的中等范围的集成测试，以验证两个或多个组件之间的相互作用；以及5%的端到端测试，以验证整个系统。 

> The Beyoncé Rule: “If you liked it, then you shoulda put a test on it.”
> 碧昂斯规则：如果你喜欢它，那么你应该对它进行测试。

> Code coverage can provide some insight into untested code, but it is not a substitute for thinking critically about how well your system is tested.
> 代码覆盖率可以提供一些对未测试代码的洞察力，但它不能替代对系统测试情况的批判性思考。

> Some of the worst offenders of brittle tests come from the misuse of mock objects. Google’s codebase has suffered so badly from an abuse of mocking frameworks that it has led some engineers to declare “no more mocks!” 
> 脆性测试的一些最严重的犯罪者来自于对模拟对象的误用。谷歌的代码库因滥用模拟框架而受到严重影响，导致一些工程师宣布 "不再使用模拟对象"。

> Each supported language at Google has one standard test framework and one standard mocking/stubbing library.
> 谷歌支持的每种语言都有一个标准的测试框架和一个标准的  mocking/stubbing 库。

推广测试文化：
- Orientation.
- 测试认证计划。
- Testing on the Toilet. （厕所小广告。）

[Google Testing Blog.](https://testing.googleblog.com)

## 12. 单元测试

> Due to their many advantages, most tests written at Google are unit tests, and as a rule of thumb, we encourage engineers to aim for a mix of about 80% unit tests and 20% broader-scoped tests. 
> 由于它们有很多优点，在Google写的大多数测试都是单元测试，作为一个经验法则，我们鼓励工程师把目标放在80%的单元测试和20%的范围更广的测试。

> Bad tests must be fixed before they are checked in, lest they impose a drag on future engineers.
> 不好的测试必须在签入前得到修复，以免它们给未来的工程师带来拖累。

Preventing brittle tests:
- Strive for unchanging tests. 不需要随着系统改变。
- Test via public APIs, rather than its implementation details.
    - This is sometimes called the "Use the front door first principle.”
- Test state, not Interactions.
- Writing clear tests. Make your tests complete and concise.
- Test behaviors, not methods.
- ...

> A good trick if you’re stuck is to try starting the test name with the word “should.”

> nstead of being completely DRY, test code should often strive to be DAMP—that is, to promote “Descriptive And Meaningful Phrases.”
> 测试代码应该努力做到DAMP -- 即 "描述性和有意义的短语"。


## 13. 测试替身（Test Doubles）

> A test double is an object or function that can stand in for a real implementation in a test, similar to how a stunt double can stand in for an actor in a movie.
> 测试替身是一个对象或函数，可以在测试中代替真正的实现，类似于特技替身可以代替电影中的演员。

> One lesson we learned the hard way is the danger of overusing mocking frameworks, which allow you to easily create test doubles.
> 我们学到的一个教训是过度使用 mocking 框架的危险性，它允许你轻松地创建测试替身。

> Dependency injection is a common technique for introducing seams. 
> 依赖性注入是引入接缝的一种常见技术。

> Mocking frameworks exist for most major programming languages. At Google, we use Mockito for Java, the googlemock component of Googletest for C++, and unittest.mock for Python.
> 大多数主要的编程语言都有 mocking 框架。在谷歌，我们使用Java的Mockito，C++的Googletest的googlemock组件，以及Python的unitest.mock。

> If using a real implementation is not feasible within a test, the best option is often to use a fake in its place. A fake is preferred over other test double techniques because it behaves similarly to the real implementation: the system under test shouldn’t even be able to tell whether it is interacting with a real implementation or a fake.
> 如果在测试中使用一个真实的实现是不可行的，最好的选择往往是使用一个假的来代替它。假的比其他测试的替身技术更受欢迎，因为它的行为与真实的实现相似：被测试的系统甚至不应该能够知道它是在与真实的实现还是假的互动。

> The team that owns the real implementation should write and maintain a fake.
> 拥有真实实现的团队应该编写和维护一个假的。

> Some people at Google jokingly refer to tests that overuse interaction testing as change-detector tests because they fail in response to any change to the pro‐ duction code, even if the behavior of the system under test remains unchanged.
> 谷歌的一些人开玩笑地把过度使用交互测试的测试称为变化检测器测试，因为它们对程序代码的任何变化都会失效，即使被测系统的行为没有变化。

## 14. 更大规模测试

> Almost all unit tests at Google are written by the same engineer who is writing the unit under test.
> 在谷歌，几乎所有的单元测试都是由编写被测单元的同一个工程师编写的。

> One common approach we use for manual exploratory testing is the bug bash. A team of engineers and related personnel (managers, product managers, test engineers, anyone with familiarity with the product) schedules a “meeting,” but at this session, everyone involved manually tests the product.
> 我们在手动探索性测试中使用的一种常见方法是bug bash。一个由工程师和相关人员（经理、产品经理、测试工程师、任何熟悉产品的人）组成的团队安排一个 "会议"，但在这个会议上，每个人都对产品进行手动测试。

> For years, Google has run an annual war game called DiRT (Disaster Recovery Testing) during which faults are injected into our infrastructure at a nearly planetary scale. We simulate everything from datacenter fires to malicious attacks. In one mem‐ orable case, we simulated an earthquake that completely isolated our headquarters in Mountain View, California, from the rest of the company. Doing so exposed not only technical shortcomings but also revealed the challenge of running a company when all the key decision makers were unreachable.
> 多年来，谷歌一直在进行一场名为DiRT（灾难恢复测试）的年度战争游戏，期间将故障注入我们的基础设施，其规模几乎达到了地球级。我们模拟了从数据中心火灾到恶意攻击的一切。在一个令人难忘的案例中，我们模拟了一场地震，将我们位于加州山景城的总部与公司其他部门完全隔离。这样做不仅暴露了技术上的缺陷，而且也揭示了在所有关键决策者都无法联系的情况下，经营一家公司的挑战。

> During this test, almost no one could get anything done, so many people gave up on work and went to one of our many cafes, and in doing so, we ended up creating a DDoS attack on our cafe teams!
> 在这次测试中，几乎没有人能够完成任何事情，所以很多人放弃了工作，去了我们众多的咖啡馆之一，在这样做的过程中，我们最终给我们的咖啡馆团队制造了一次DDoS攻击!


## 15. 弃用（Deprecation）

> Unlike with most of the other topics we have discussed in this book, Google is still learning how best to deprecate and remove software systems.
> 与我们在本书中讨论的大多数其他主题不同，谷歌仍在学习如何最好地废止和删除软件系统。

> Earlier we made the assertion that “code is a liability, not an asset.” If that is true, why have we spent most of this book discussing the most efficient way to build software systems that can live for decades? Why put all that effort into creating more code when it’s simply going to end up on the liability side of the balance sheet?
> Code itself doesn’t bring value: it is the functionality that it provides that brings value. That functionality is an asset if it meets a user need: the code that implements this functionality is simply a means to that end. If we could get the same functionality from a single line of maintainable, understandable code as 10,000 lines of convoluted spaghetti code, we would prefer the former. Code itself carries a cost—the simpler the code is, while maintaining the same amount of functionality, the better.
> Instead of focusing on how much code we can produce, or how large is our codebase, we should instead focus on how much functionality it can deliver per unit of code and try to maximize that metric. One of the easiest ways to do so isn’t writing more code and hoping to get more functionality; it’s removing excess code and systems that are no longer needed. Deprecation policies and procedures make this possible.
> 前面我们曾断言，"代码是一种负债，而不是一种资产"。如果这是真的，为什么我们花了本书的大部分篇幅来讨论建立可以活几十年的软件系统的最有效方法？为什么要把所有的精力都放在创造更多的代码上，而这些代码最终会成为资产负债表上的负债？
> 代码本身并不带来价值：它所提供的功能才带来价值。如果这个功能能满足用户的需求，它就是一种资产：实现这个功能的代码只是达到这个目的的一种手段。如果我们能从一行可维护的、可理解的代码中获得与一万行错综复杂的意大利面条代码相同的功能，我们会选择前者。代码本身是有成本的，在保持相同功能的情况下，代码越简单越好。
> 与其关注我们能产生多少代码，或者我们的代码库有多大，不如关注每单位的代码能提供多少功能，并努力使这个指标最大化。要做到这一点，最简单的方法之一不是编写更多的代码并希望获得更多的功能；而是删除多余的代码和不再需要的系统。去除政策和程序使这成为可能。

> Another surprising reluctance to deprecate is emotional attachment to old systems, particularly those that the deprecator had a hand in helping to create.
> 另一个令人惊讶的不愿意废弃的原因是对旧系统的情感依恋，特别是那些废弃者曾帮助创建的系统。

> There’s an old joke within Google that there are two ways of doing things: the one that’s deprecated, and the one that’s not-yet-ready. 
> 在谷歌内部有一个老笑话，有两种做事的方式：一种是被废弃的方式，另一种是尚未准备好的方式。

>  And in spite of the popular notion of software engineers as data-driven automata, it can be psychologically difficult to plan for the eventual demise of the creations we are working so hard to build.
>   尽管有软件工程师是数据驱动的自动机的流行概念，但从心理上来说，要为我们辛辛苦苦打造的作品的最终消亡做打算是很困难的。

> This does not imply that the schedule can’t change, but empower the team running the deprecation process to break noncompliant users after they have been sufficiently warned through efforts to migrate them. 
> 这并不意味着时间表不能改变，而是授权运行废止程序的团队，在通过努力迁移不符合要求的用户并对其进行充分警告后，打破这些用户。

> Frequently at Google, when a system is slated for deprecation and removal, the team will announce planned outages of increasing duration in the months and weeks prior to the turndown.
> 在谷歌，当一个系统被计划废除和移除时，团队会在关闭前的几个月和几周内宣布有计划的中断，并且持续时间越来越长。

> Without backsliding prevention, deprecation can become a game of whack-a-mole.
> 如果没有防止倒退的措施，弃用就会成为一个打地鼠的游戏。

# IV. 工具

## 16. 版本和分支管理

> Unfortunately, those attempts to move toward more common tools like Git have been stymied by the sheer size of the codebase and userbase, to say nothing of Hyrum’s Law effects tying us to a particular VCS and interface for that VCS. This is perhaps not surprising: most existing tools don’t scale well with 50,000 engineers and tens of millions of commits. 
> 不幸的是，由于代码库和用户群的规模太大，再加上海勒姆法则的影响，我们被束缚在一个特定的VCS和该VCS的界面上，这些试图向Git这样的通用工具发展的尝试受到了阻碍。这也许并不令人惊讶：大多数现有的工具在面对5万名工程师和数千万的提交时都不能很好地扩展。

> There’s an (oft-unspoken) truth when discussing version control: the technology is only one part of it for any given organization; there is almost always an equal amount of policy and usage convention on top of that.
> 在讨论版本控制时，有一个（经常不说的）事实：对于任何特定的组织来说，技术只是其中的一部分；几乎总是有同等数量的政策和使用惯例在上面。

> We believe that a version control policy that makes extensive use of dev branches as a means toward product stability is inherently misguided.
> 我们认为，将大量使用开发分支作为实现产品稳定性的手段的版本控制政策本身就是一种误导。

> Some unlucky engineer becomes the Build Master/Merge Coordinator/Content Management Engineer, focused on acting as the single point coordinator to merge all the disparate branches in the organization.
> 一些不走运的工程师成了Build Master/Merge Coordinator/Content Management Engineer，专注于充当单点协调人，合并组织中所有不同的分支。

> We rely on an in-house-developed centralized VCS called Piper.
> 我们依靠一个内部开发的集中式VCS，称为Piper。

> In addition to our VCS, one key feature of Google’s version control policy is what we’ve come to refer to as “One Version.” This extends the “Single Source of Truth” concept we looked at earlier—ensuring that a developer knows which branch and repository is their source of truth—to something like “For every dependency in our repository, there must be only one version of that dependency to choose.”
> 除了我们的VCS之外，谷歌版本控制政策的一个关键特征就是我们所说的 "一个版本"。这扩展了我们前面提到的 "单一真理来源 "的概念--确保开发者知道哪个分支和版本库是他们的真理来源--到类似于 "对于我们版本库中的每个依赖，必须只有一个版本的依赖可以选择。"

> Across the roughly 1,000 teams that work in the Google monorepo, there are only a couple that have such a dev branch.
> 在Google monorepo中工作的大约1000个团队中，只有几个有这样的开发分支。

> Given all of that and our belief in the merits of the One-Version Rule, it is reasonable to ask whether a monorepo is the One True Way. By comparison, the open source community seems to work just fine with a “manyrepo” approach built on a seemingly infinite number of noncoordinating and nonsynchronized project repositories. In short: no, we don’t think the monorepo approach as we’ve described it is the perfect answer for everyone.
> 考虑到所有这些，以及我们对 "单一版本规则 "优点的信念，我们有理由问，monorepo 是否是唯一正确的方法。相比之下，开源社区似乎可以用 "manyrepo" 的方法来工作，而这种方法建立在看似无限多的非协调和非同步的项目库上。简而言之：不，我们不认为我们所描述的 monorepo 方法是对每个人都是完美的答案。

> A very similar set of issues governs whether to prefer a monorepo or a collection of finer-grained repositories. The specific decisions of how to store your source code (or store your files, for that matter) are easily debatable, and in some cases, the particulars of your organization and your workflow are going to matter more than others. These are decisions you’ll need to make yourself.
> What is important is not whether we focus on monorepo; it’s to adhere to the One-Version principle to the greatest extent possible: developers must not have a choice when adding a dependency onto some library that is already in use in the organization.
> 一组非常相似的问题决定了是选择 monorepo 还是更细粒度的库的集合。如何存储你的源代码（或存储你的文件）的具体决定是很容易争论的，在某些情况下，你的组织和你的工作流程的特殊性会比其他的更重要。这些都是你需要自己做出的决定。
重要的不是我们是否关注 monorepo；而是最大限度地坚持一个版本原则：开发人员在向组织中已经使用的某个库添加依赖关系时不能有选择。

> Git submodules, Bazel with external dependencies, and CMake subprojects all allow modern developers to syn‐ thesize something weakly approximating monorepo behavior without the costs and downsides of a monorepo.
> Git子模块、具有外部依赖的Bazel和CMake子项目都允许现代的开发者在没有单项目的成本和缺点的情况下，将一些弱的近似单项目的行为协同起来。

> Fine-grained repositories in a federated/virtual-monorepo (VMR)–style repository can make it easier to isolate experimental or top-secret projects while still holding to One Version and allowing access to common utilities.
> Federated/virtual-monorepo (VMR) 式的细粒度仓库可以更容易地隔离实验性或绝密性项目，同时仍然坚持一个版本，并允许访问通用工具。

> To put it another way: if every project in your organization has the same secrecy, legal, privacy, and security requirements, a true monorepo is a fine way to go. Otherwise, aim for the functionality of a monorepo, but allow yourself the flexibility of implementing that experience in a different fashion. If you can manage with disjoint repositories and adhere to One Version or your workload is all disconnected enough to allow truly separate repositories, great. Otherwise, synthesizing something like a VMR in some fashion may represent the best of both worlds.
> After all, your choice of filesystem format really doesn’t matter as much as what you write to it.
> 换句话说：如果你的组织中的每个项目都有相同的保密、法律、隐私和安全要求，那么真正的monorepo是一种很好的方式。否则，就以monorepo的功能为目标，但允许自己以不同的方式灵活地实现这些经验。如果你可以用不相干的存储库来管理，并且坚持一个版本，或者你的工作负载都是不相干的，足以允许真正的独立存储库，那就太好了。否则，以某种方式合成类似VMR的东西可能代表了两个世界的最佳状态。
> 毕竟，你对文件系统格式的选择并不像你对它的写法那么重要。

> Google isn’t the only organization to publicly discuss the benefits of a monorepo approach. Microsoft, Facebook, Netflix, and Uber have also publicly mentioned their reliance on the approach. DORA has published about it extensively. It’s vaguely possible that all of these successful, long-lived companies are misguided, or at least that their situations are sufficiently different as to be inapplicable to the average smaller organization. Although it’s possible, we think it is unlikely.
> 谷歌并不是唯一一个公开讨论monorepo方法的好处的组织。微软、Facebook、Netflix和Uber也公开提到他们对这种方法的依赖。DORA已经广泛地发表了这方面的内容。依稀有可能的是，所有这些成功的、长寿的公司都被误导了，或者至少他们的情况有足够的不同，以至于不适用于一般的小型组织。虽然有这种可能，但我们认为这种可能性不大。

> The other major argument against monorepos is that it doesn’t match how develop‐ ment happens in the Open Source Software (OSS) world. Although true, many of the practices in the OSS world come (rightly) from prioritizing freedom, lack of coordi‐ nation, and lack of computing resources. Separate projects in the OSS world are effec‐ tively separate organizations that happen to be able to see one another’s code. Within the boundaries of an organization, we can make more assumptions: we can assume the availability of compute resources, we can assume coordination, and we can assume that there is some amount of centralized authority.
> 反对monorepo的另一个主要论点是，它不符合开源软件（OSS）世界中的开发方式。虽然这是事实，但开放源码软件世界中的许多做法（正确地）来自于对自由的优先考虑，缺乏合作，以及缺乏计算资源。在开放源码软件世界中，独立的项目实际上是独立的组织，碰巧可以看到彼此的代码。在一个组织的边界内，我们可以做更多的假设：我们可以假设计算资源的可用性，我们可以假设协调，我们可以假设有一定程度的集中式权威。

> A less common but perhaps more legitimate concern with the monorepo approach is that as your organization scales up, it is less and less likely that every piece of code is subject to exactly the same legal, compliance, regulatory, secrecy, and privacy requirements. One native advantage of a manyrepo approach is that separate repositories are obviously capable of having different sets of authorized developers, visibility, permis‐ sions, and so on. Stitching that feature into a monorepo can be done but implies some ongoing carrying costs in terms of customization and maintenance.
> 对于 monorepo 的方法，一个不太常见但可能更合理的担忧是，随着你的组织规模的扩大，越来越不可能每一段代码都受到完全相同的法律、合规、监管、保密和隐私要求的约束。manyrepo 方法的一个原生优势是，独立的库显然能够拥有不同的授权开发者、可见性、许可等等。将该功能拼接到一个 monorepo 中是可以做到的，但这意味着在定制和维护方面的一些持续成本。

> At the same time, the industry seems to be inventing lightweight interrepository linkage over and over again. Sometimes, this is in the VCS (Git submodules) or the build system. So long as a collection of repositories have a consistent understanding of “what is trunk,” “which change happened first,” and mechanisms to describe depen‐ dencies, we can easily imagine stitching together a disparate collection of physical repositories into one larger VMR. Even though Piper has done very well for us, investing in a highly scaling VMR and tools to manage it and relying on off-the-shelf customization for per-repository policy requirements could have been a better investment.
> 与此同时，业界似乎在一次又一次地发明轻量级的库间链接。有时，这是在VCS（Git子模块）或构建系统中。只要存储库的集合对 "什么是主干"、"哪个变化先发生 "有一致的理解，并有描述依赖性的机制，我们就可以很容易地想象把不同的物理存储库的集合缝合到一个更大的VMR中。尽管Piper为我们做得很好，但投资于一个高度扩展的VMR和工具来管理它，并依靠现成的定制来满足每个库的策略要求，可能是一个更好的投资。

[monorepo-vs-polyrepo](https://github.com/joelparkerhenderson/monorepo-vs-polyrepo)

## 17. 代码搜索

> GSearch originally ran on Jeff Dean’s personal computer, which once caused company-wide distress when he went on vacation and it was shut down!
> GSearch最初是在Jeff Dean的个人电脑上运行的，当他去度假时，它曾经引起了全公司的困扰，电脑被关闭了!

> About 16% of Code Searches try to answer the question of where a specific piece of information exists in the codebase.
> 大约16%的代码搜索试图回答代码库中某一特定信息的存在位置问题。

> Roughly one quarter of Code Searches are classic file browsing, to answer the question of what a specific part of the codebase is doing. 
> 大约四分之一的代码搜索是传统的文件浏览，以回答代码库的特定部分在做什么的问题。

> The most frequent use case—about one third of Code Searches—are about seeing examples of how others have done something.
> 最常见的使用情况--大约三分之一的代码搜索--是关于看到别人是如何做某事的例子。

> About 16% of Code Searches try to answer the question of why a certain piece of code was added, or why it behaves in a certain way.
> 大约16%的代码搜索试图回答为什么要添加某段代码，或者为什么它的行为方式是某种方式。

> About 8% of Code Searches try to answer questions around who or when someone introduced a certain piece of code.
> 大约8%的代码搜索试图回答围绕谁或何时有人引入某段代码的问题。

> Over the years, our index changed from the original trigram-based solu‐ tion, through a custom suffix array–based solution, to the current sparse n-gram solution. 
> 多年来，我们的索引从最初的基于Trigram的解决方案，到基于自定义后缀数组的解决方案，再到现在的稀疏n-gram解决方案。

At Google, the key tool for this is Code Search.

[Kythe](https://kythe.io/)

## 18. 构建系统

> If you ask Google engineers what they like most about working at Google (besides the free food and cool products), you might hear something surprising: engineers love the build system.
> 如果你问谷歌的工程师，他们最喜欢在谷歌工作的什么（除了免费的食物和很酷的产品），你可能会听到一些令人惊讶的事情：工程师们喜欢构建系统。

> Most major build systems in use today, such as Ant, Maven, Gradle, Grunt, and Rake, are task based.
> 目前使用的大多数主要构建系统，如Ant、Maven、Gradle、Grunt和Rake，都是基于任务的。

> Google’s remote cache is called ObjFS. It consists of a backend that stores build outputs in Bigtables distributed throughout our fleet of production machines and a frontend FUSE daemon named objfsd that runs on each developer’s machine.
> 谷歌的远程缓存被称为ObjFS。它由一个后端和一个前端FUSE守护程序组成，前者将构建输出存储在Bigtables中，分布在我们的生产机群中，后者在每个开发人员的机器上运行，名为objfsd。

> Google’s remote execution system is called Forge. A Forge client in Blaze called the Distributor sends requests for each action to a job running in our datacenters called the Scheduler.
> 谷歌的远程执行系统被称为Forge。Blaze中的Forge客户端称为 "分配器"，它将每个行动的请求发送给在我们数据中心运行的称为 "调度器 "的工作。

> Another alternative that completely sidesteps the issue is to vendor your project’s dependencies. When a project vendors its dependencies, it checks them into source control alongside the project’s source code, either as source or as binaries. This effec‐ tively means that all of the project’s external dependencies are converted to internal dependencies. Google uses this approach internally, checking every third-party library referenced throughout Google into a third_party directory at the root of Goo‐ gle’s source tree. However, this works at Google only because Google’s source control system is custom built to handle an extremely large monorepo, so vendoring might not be an option for other organizations.
> 另一个完全避开这个问题的办法是将你的项目的依赖关系卖给别人。当一个项目销售它的依赖关系时，它把它们和项目的源代码一起检查到源码控制中，可以是源码，也可以是二进制文件。这有效地意味着项目的所有外部依赖被转换为内部依赖。谷歌在内部使用这种方法，将整个谷歌引用的每一个第三方库都检查到谷歌源代码树根部的第三方目录中。然而，这在谷歌是可行的，因为谷歌的源码控制系统是为处理一个极其庞大的单库而定制的，所以对于其他组织来说，Vendoring可能不是一个选择。

Nix?

> External dependencies should be versioned explicitly under source control. Relying on “latest” versions is a recipe for disaster and unreproducible builds.
> 外部依赖应该在源代码控制下明确地进行版本控制。依赖于 "最新 "的版本是一种灾难和不可复制的构建的秘诀。

## 19. 代码审查工具

Critique.

> Across these guiding principles, simplicity has probably had the most impact on the tool.
> 在这些指导原则中，简单性可能对该工具的影响最大。

>  Anyone can comment on changes, providing a “drive-by review” as they see it necessary.
>  任何人都可以对变化发表评论，在他们认为必要时提供 "路过审查"。

>  In emergency cases, the author can forcefully commit their change and have it reviewed after commit.
>   在紧急情况下，作者可以强行提交他们的修改，并在提交后让人审查。

评审员的选择工具会考虑到以下因素：
- 谁拥有被修改的代码。
- 谁对该代码最熟悉（即，谁最近修改过该代码）。
- 谁可以进行审查（即没有离开办公室，最好是在同一时区）。

> Critique also offers the ability to track review progress via per-person state. Reviewers have checkboxes to mark individual files at the latest snapshot as reviewed, helping the reviewer keep track of what they have already looked at. When the author modi‐ fies a file, the “reviewed” checkbox for that file is cleared for all reviewers because the latest snapshot has been updated.
> Critique 还提供了通过每个人的状态来跟踪审查进度的能力。审稿人可以用复选框将最新快照中的单个文件标记为已审阅，帮助审稿人跟踪他们已经看过的内容。当作者修改一个文件时，该文件的 "已审阅 "复选框对所有审阅者来说都是清空的，因为最新的快照已经更新。 

> The attention set comprises the set of people on which a change is currently blocked. When a reviewer or author is in the attention set, they are expected to respond in a timely manner.  … After we implemented this feature, our users had a difficult time imagining the previous state. The prevailing opinion is: how did we get along without this? The alterna‐ tive before we implemented this feature was chatting between reviewers and authors to understand who was dealing with a change. This feature also emphasizes the turn-based nature of code review; it is always at least one person’s turn to take action.
> 关注集包括当前被 block 在某一变更上的人的集合。当评审员或作者在注意力集合中时，他们应该及时做出反应。......在我们实施这个功能后，我们的用户很难想象以前的状态。普遍的看法是：没有这个功能，我们是怎么过的？在我们实施这个功能之前，另一个办法是在审稿人和作者之间进行聊天，以了解谁在处理一个变化。这个功能也强调了代码审查的轮流性质；总是至少有一个人要采取行动。

> An LGTM stamp from a reviewer means that “I have reviewed this change, believe that it meets our standards, and I think it is okay to commit it after addressing unre‐ solved comments.” An Approval stamp from a reviewer means that “as a gatekeeper, I allow this change to be committed to the codebase.” A reviewer can mark comments as unresolved, meaning that the author will need to act upon them. When the change has at least one LGTM, sufficient approvals and no unresolved comments, the author can then commit the change. Note that every change requires an LGTM regardless of approval status, ensuring that at least two pairs of eyes viewed the change.
> 评审员的LGTM印章意味着 "我已经审阅了这个修改，相信它符合我们的标准，并且我认为在解决了未解决的评论之后，可以提交它。" 评审员的批准印章意味着 "作为一个把关人，我允许这个修改被提交到代码库中"。评审员可以将评论标记为未解决，这意味着作者需要对它们采取行动。当修改至少有一个LGTM，有足够的批准，没有未解决的评论，作者就可以提交修改。请注意，每项修改都需要一个LGTM，无论批准状态如何，以确保至少有两双眼睛在看这个修改。

> Gerrit also supports a more sophisticated scoring system. A reviewer can veto a change by placing a –2 score, and the scoring system is highly configurable.
> Gerrit还支持一个更复杂的评分系统。评审员可以通过打-2分来否决一项修改，而且评分系统是高度可配置的。

> Time spent in code reviews is time not spent coding, so any optimization of the review process can be a productivity gain for the company.
> 花在代码审查上的时间就是没有花在编码上的时间，所以对审查过程的任何优化都可以为公司带来生产力的提高。 


## 20. 静态分析

Tricorder: Google’s Static Analysis Platform.

Focus on developer happiness.

## 21. 依赖管理

> As the Open Source Software (OSS) model continues to grow and expand into new domains, and the dependency graph for many popular projects continues to expand over time, dependency management is perhaps becoming the most important prob‐ lem in software engineering policy. We are no longer disconnected islands built on one or two layers outside an API. Modern software is built on towering pillars of dependencies; but just because we can build those pillars doesn’t mean we’ve yet figured out how to keep them standing and stable over time.
> 随着开源软件（OSS）模式的不断发展和扩展到新的领域，以及许多流行项目的依赖图随着时间的推移不断扩大，**依赖管理也许正在成为软件工程政策中最重要的问题**。我们不再是建立在API之外的一两层上的不相连的岛屿。现代软件是建立在依赖关系的高大支柱上的；但是，**我们能够建立这些支柱并不意味着我们已经弄清楚如何使它们长期屹立和稳定**。

> To some extent, this chapter is a summary of what we know does not work (or at least might not work at larger scales) and where we think there is the potential for better out‐ comes. We definitely cannot claim to have all the answers here; if we could, we wouldn’t be calling this one of the most important problems in software engineering.
> 在某种程度上，本章是对我们所知道的不起作用（或至少在更大范围内不起作用）以及我们认为有可能取得更好成果的地方的总结。我们绝对不能声称在这里有所有的答案；如果我们可以，我们就不会把这个问题称为软件工程中最重要的问题之一。

> Systems of policy and technology for dependency management largely boil down to the question, “How do we avoid conflicting requirements while still allowing change among noncoordinating groups?”
> 依赖性管理的政策和技术体系在很大程度上归结为一个问题："我们如何避免冲突的需求，同时仍然允许非协调组之间的变化？" 

> Source control (when you control the projects in question) is far easier than dependency management (when you don’t).
> 源头控制（当你控制有关项目时）远比依赖性管理（当你不控制时）容易。

> When proposing solutions to dependency management, there are four common options that we know of that exhibit at least some of the appropriate properties: nothing ever changes, semantic versioning, bundle everything that you need (coordinating not per project, but per distribution), or Live at Head.
> 在提出依赖性管理的解决方案时，我们知道有四种常见的选择，它们至少表现出一些适当的属性：永远不改变、语义版本、捆绑你所需要的一切（不是按项目，而是按发行版），或 Live at Head。

Minimum Version Selection(MVS): when liba’s specification requires libbase ≥1.7, we’ll try libbase 1.7 directly, even if a 1.8 is available.

> This is recognizing the core concern with SemVer, using MVS or not: there is some loss of fidelity in this compression of software changes into version numbers.
> 这就是认识到SemVer的核心问题，无论是否使用MVS：在这种将软件变化压缩为版本号的做法中，会有一些保真度的损失。

> And thus, the model of dependency management given infinite resources is effectively that of the Live at Head model.
> 因此，在资源无限的情况下，依赖性管理的模式实际上就是 "活在头上 "的模式。

> As the Apache community saying goes, we ought to priori‐ tize “community over code.” If you provide great code but are a poor community member, that can still be harmful to your organization and the broader community.
> 正如Apache社区的说法，我们应该优先考虑 "社区大于代码"。如果你提供了很好的代码，但却是一个糟糕的社区成员，这仍然会对你的组织和更广泛的社区造成伤害。

gflags 的失败的开源故事。

>  A dependency is a contract: there is a give and take, and both providers and con‐ sumers have some rights and responsibilities in that contract. Providers should be clear about what they are trying to promise over time.
>  依赖关系是一种合同：有付出就有收获，提供者和接受者在该合同中都有一些权利和责任。提供者应该清楚他们在一段时间内试图承诺什么。


## 22. 大规模变更（Large-Scale Changes, LSC）

> Today it is common for a double-digit percentage (10% to 20%) of the changes in a project to be the result of LSCs.
> 今天，一个项目中的两位数百分比（10%至20%）的变化是LSCs的结果，这很常见。

> The largest series of LSCs ever executed removed more than one billion lines of code from the repository over the course of three days.
> 有史以来最大的一系列LSCs的执行，在三天的时间里从资源库中删除了超过10亿行的代码。

> Socially, it’s important that code owners understand the changes happening to their software, but they also have come to realize that they don’t hold a veto over the broader LSC. 
> 从社会角度来说，代码所有者了解发生在他们软件上的变化是很重要的，但他们也已经意识到，他们对更广泛的LSC并不拥有否决权。

> We also use compiler-based indices to run abstract syntax tree-based analysis and transformations over our codebase. Tools such as ClangMR, JavacFlume, or Refaster.
> 我们还使用基于编译器的索引，在我们的代码库上运行基于抽象语法树的分析和转换。诸如ClangMR、JavacFlume或Refaster等工具。

> At Google, as at most organizations, typical changes to the codebase are handcrafted by individual engineers working on specific features or bug fixes. ... The creation of such a change is akin to owning and raising a favorite pet.
> In contrast, effective handling of LSCs requires a high degree of automation and pro‐ duces an enormous number of individual changes. In this environment, we’ve found it useful to treat specific changes as cattle: nameless and faceless commits that might be rolled back or otherwise rejected at any given time with little cost unless the entire herd is affected.
> With a “pet” commit, it can be difficult to not take rejection personally, but when working with many changes as part of a large-scale change, it’s just the nature of the job.
> 在谷歌，和大多数组织一样，代码库的典型变化是由从事特定功能或错误修复的个别工程师手工制作的。... 创建这样的变化就像拥有和养育一只喜爱的宠物一样。
相比之下，有效地处理LSCs需要高度的自动化，并产生大量的单独修改。在这种环境下，我们发现把特定的变化当作牛来对待是很有用的：无名无姓的提交，在任何时候都可能被回滚或以其他方式拒绝，除非整个牛群受到影响，否则代价很小。
对于一个 "宠物 "提交，不把拒绝当回事是很难的，但当作为大规模变革的一部分而处理许多变更时，这只是工作的自然性质。


## 23. 持续集成（CI）

>  Having a 100% green rate on CI, just like having 100% uptime for a production service, is awfully expensive.
>  在CI上拥有100%的绿色率，就像生产服务拥有100%的正常运行时间一样，是非常昂贵的。

> Policies that say, “Nobody can commit if our latest CI results aren’t green” are probably misguided. If CI reports an issue, such failures should definitely be investigated before letting people commit or compound the issue. But if the root cause is well understood and clearly would not affect production, blocking commits is unreasonable.
> 那些说 "如果我们最新的CI结果不是绿色的，任何人都不能提交 "的政策可能是被误导了。如果 CI 报告了一个问题，在让人们提交或使问题复杂化之前，肯定应该对这种失败进行调查。但如果根本原因已被充分理解，并且显然不会影响生产，那么阻止提交是不合理的。

> These hotlists should be curated to make sure any release-blocking bugs are fixed immediately. Nonrelease blockers should be fixed, too; they are less urgent, but should also be pri‐ oritized so the test suite remains useful and is not simply a growing pile of disabled, old tests.
> 这些热名单应该被策划，以确保任何阻碍发布的错误被立即修复。非发布障碍也应该被修复；它们不那么紧急，但也应该被优先考虑，以便测试套件保持有用，而不是简单地成为一堆被禁用的旧测试。

> To deal with such breakages, each team has a “Build Cop.” The Build Cop’s responsi‐ bility is keeping all the tests passing in their particular project, regardless of who breaks them.
> 为了处理这种破坏，每个团队都有一个 "Build Cop"。Build Cop的职责是在他们的特定项目中保持所有的测试通过，无论谁破坏它们。

## 24. 持续发布（CD）

> There is a saying among educators that no lesson plan survives its first contact with the student body. In much the same way, no software is perfect at first launch, and the only guarantee is that you’ll have to update it. Quickly.
> 在教育工作者中流传着这样一句话：没有一个教案能在与学生的第一次接触中幸存下来。同样地，没有一个软件在首次推出时是完美的，唯一的保证是你必须更新它。迅速。

Faster is safer.

Isolation: strive for modular architecture to isolate changes and make troubleshooting easier.

> The rest of this book is arguably about minimizing the set of unintended outcomes for a release, but in the end we must admit that software is fundamentally complex. 
> 本书的其余部分可以说是关于最大限度地减少发布时的一系列意外结果，但最后我们必须承认，软件从根本上说是复杂的。

> Bloat is an unfortunate side effect of most software development life cycles, and the more successful a product becomes, the more bloated its code base typically becomes.
> 臃肿是大多数软件开发生命周期的一个不幸的副作用，一个产品越是成功，其代码库通常就越是臃肿。

## 25. 云服务

> Easy things should be easy, and complex things should be possible.
> 简单的事情应该是容易的，而复杂的事情应该是可能的。
