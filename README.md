# MaskImage
  
### 学习文章  
[用于mask遮罩效果的图片配合resizableImage使用](http://www.cnblogs.com/YouXianMing/p/4375182.html)  
  
### 介绍  
开发中,我们经常有这样的需求:需要对image的部分内容进行拉伸或扩展.比如App中用到时间线,时间线的图片,比如一个箭头,需要根据内容变长,但是箭头不能放大,又比如一个温度计App,温度计中显示当前温度的图片,也要随着温度的变化拉伸.  
  
这时,我们会用到UIImage的一个API(或者说两个API):
`resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage`   
 
(或者说`resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage`)
  
`resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage`   
和 `resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage` 功能是一样的, 都是指定inset内的图片内容进行缩放,inset范围的内容不变. 只不过前者指定了缩放模式,其中UIImageResizingModeTile 是平铺,UIImageResizingModeStretch 是拉伸.  
  
本文展示一个遮罩拉伸的例子.  
  
### 效果   
![ResizeImage](/ResizeImage.gif)  
  
### 博客链接  
[刘大帅](http://www.jianshu.com/users/09e77d340dcf/latest_articles)