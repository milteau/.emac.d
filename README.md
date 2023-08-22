<h3 align="center">A fast and incredible Emacs config</h3>

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/EmacsIcon.svg/120px-EmacsIcon.svg.png" />
</p>

<div align="center">
  
[![License](http://img.shields.io/:license-gpl3-blue.svg)](LICENSE)
![Supports Emacs 28.1-30.x](https://img.shields.io/badge/Supports-Emacs_28.1_--_30.x-blueviolet.svg?style=flat-square&logo=GNU%20Emacs&logoColor=white)

</div>

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**
- [用纯文本组织生活](#用纯文本组织生活)
- [个人Emacs配置](#个人Emacs配置)
- [最后](#最后)

<!-- markdown-toc end -->

# 用纯文本组织生活

##### 1/

“ I have been using org-mode as my personal information manager for years now.  I started small with just the default TODO and DONEkeywords.  I added small changes to my workflow and over time it evolved into what is described by this document.

I still change my workflow and try new things regularly.  This document describes mature workflows in my current org-mode setup.  I tend to document changes to my workflow 30 days after implementing them (assuming they are still around at that point) so that the new workflow has a chance to mature. ”(Hansen, Bernt. [《Org Mode - Organize Your Life In Plain Text!》](http://doc.norang.ca/org-mode.html#HowToUseThisDocument.)

翻译过来就是：多年来我一直使用 org-mode 作为我的个人信息管理器。我开始时只使用默认的 TODO 和 DONE 关键字。我对我的工作流程进行了一些小的更改，随着时间的推移，它演变成本文档所描述的内容。

我仍然改变我的工作流程并定期尝试新事物。本文档描述了我当前组织模式设置中的成熟工作流程。我倾向于在实施工作流程 30 天后记录这些变更（假设当时它们仍然存在），以便新工作流程有机会成熟。

上述是我在浏览《用纯文本管理你的生活》时的摘录，主要是讲述了该作者使用纯文本的经历。但这并不是我写这篇文章的初衷。

对了，我是一名文科生。

#### 2/

2020年，不得不称得上是笔记软件爆发的一年。尤其是Roam的出现，将我们引上了卡片笔记加双链接的道路上。好记性不如烂笔头，记笔记是我们在学习、工作、生活中都避免不了的一项活动。

媒体哲学家马歇尔·麦克卢汉（Marshall McLuhan）曾说：“我们首先塑造了工具，然后工具又塑造了我们。”

这句话值得我们思考。在我正在写这篇的时候，我在群里看到一个Diss。我觉得这个Diss对我们理解麦克卢汉的这句话很有帮助。

1965年，戈登.摩尔就提出了计算机第一定律——摩尔定律[3]。即，当价格不变时，单个芯片上可容纳的元器件的数目，约每隔18-24个月便会增加一倍，性能也将提升一倍。这一定律揭示了信息技术进步的速度。

我读的另一篇英语短文，则讲述选择对我们而言不是权力，因为过多的选择会让我们产生焦虑。(Quote: Choice is not a right for us, and it gives birth to anxiety to our life.)

无疑，笔记软件的大热，让市面上充斥许许多多功能不一的软件，但是这些笔记软件真的有利于提高我们的生产力吗？我觉得并不能。因为我们一直处于被工具塑造的过程中。

万物之始，大道至简，衍化至繁。

#### 3/

某象笔记为了留住用户，将笔记文件的格式改成了.note格式。有的笔记软件则像极了乐高一样。我在《纯文本与文本编辑器》推荐纯文本编辑器，也在《回归Plain Text的思考》这篇文章写了自己对于纯文本记笔记的思考。

卢卡斯.卢曼只靠卡片跟几个箱子就能够实现生产力的大爆发，著作等身。为什么我们这些利用比他更为先进的方式却做不到他所达到的那种程度呢？

大道至简，衍化至繁。

但依然有些人是抓住了这个“大道”。比如 Jeff Huang，Bernt Hansen这些人。

选择纯文本，是选择一种极简。极简恰恰是一种指导生活的哲学。

#### 4/

Vim很棒。Emacs也不错。我对这两个文本编辑器都十分青睐，但就上手的难易度而言，我觉得Vim或许要容易些。不过Org-mode却更加适合实践GTD，管理生活。

配置Emacs需要一番功夫，但是配置好了以后，这不仅仅是日常使用的文本编辑器，而且还能用capture来捕捉想法、笔记，创建TODO清单。

# 个人Emacs的配置

![Overview](https://p.ipic.vip/yvix75.png)

首先，我要感谢condy0919的[一个快速且实用的Emacs配置](https://github.com/condy0919/.emacs.d/blob/master/README.md).

接下来我将附上自己的Emacs配置：

```
git clone https://github.com/milteau/.emac.d.git
```

我用Emacs主要是用`Org-mode`，其他编程之类的，我是不用的。因为自己也不会编程。

我在配置之前，先是看了Purcell的文件管理方式，看着很清晰。我看了Chen Bin 大神以及condy0919的文件管理方式也都是借鉴了Purcell的影子。然后也读了[《一年成为Emacs高手 (像神一样使用编辑器)》](https://github.com/redguardtoo/mastering-emacs-in-one-year-guide/blob/master/guide-zh.org)

于是，我也决定采用这种方式。

|File|Discription|
|-----------|-----------|
|init-org.el|用来配置org-mode|
|init-tools.el|基本的一些插件比如dired-sidebar|
|init-marcos.el|启动org-mode需要的|
|init-osx.el|这个并不清楚，因为改了condy0919的配置，需要这个才不报错，于是留了这个文件|

写在主配置文件`init.el`中的这部分如下：

```
;; standalone apps
(require 'init-org)
(require 'init-base)
(require 'init-dired)
```
# 最后

目前的使用刚好满足了我当前的需求，让我可以长时间使用Emacs，编辑文本。或许我会因为这开启一个不一样的经历。
