import flash.events.MouseEvent;

import mx.controls.Alert;

import spark.components.Label;

public function init():void{
	this.l1.text="creation completed!";
	this.l2.text="";
	this.b3.addEventListener(MouseEvent.CLICK, method3);
}

public function method2(val:String):String{
	Alert.show(val);
	this.l1.text=val;
	this.l2.text=val;
	return val;
}

private function method3(event:MouseEvent):void {
	var ls:Array = [this.l1, this.l2];
	for each(var l:Label in ls){
		l.text = "Button3 clicked!";
	}
}