//control the adding cart
var total=0;
var item="";
function PrintCart(id,name,price){
	total+=price;
	item+=name+"\n";
	alert("Button Clicked " + id + name+ "Total = " + total )
}

function DisplayTotal()
{
	// var getele=document.getElementbyId("totalbill");
	console.log("Total " + total);
}


