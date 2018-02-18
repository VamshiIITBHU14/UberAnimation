# UberAnimation
Heyaa!
This is an attempt to mimic of the animation Uber and Facebook shows up as a congratulatory popup. <br /> Looking at the attached GIF will give you a better idea of what thsi project covers.

Usage:

a) Using this in your app is real simple. Download the code, drag and drop **VKEmitter.Swift** to your project.<br />
b) Then write the below snippet when you want the animation to pop-up.

`let imageNamesArray = ["star1", "star2"]
  VKEmitter().emitParticles(superView: view, imageNamesArray: imageNamesArray, stopAfterSeconds: 20.0, type: 1)`
        
 
**superView** parameter is the **UIView** in which you want the animation to pop-up.<br />
**imageNamesArray** is the paramter of type **[String]** where you pass the names of images you wish to show up in the animaton.<br />
**stopAfterSeconds** is the parameter of **Double** type where you pass a Double value after which you want the animation to stop.<br />
**type** is the parameter of type **Int** where you pass either 1 or 2 or 3. There are basically three types of emission where 
1 corresponds to kCAEmitterLayerPoints, 2 corresponds to kCAEmitterLayerLine , 3 corresponds to kCAEmitterLayerRectangle

![ezgif com-optimize](https://user-images.githubusercontent.com/21070922/36352011-2678f670-14d8-11e8-978e-5c783c35d975.gif)
