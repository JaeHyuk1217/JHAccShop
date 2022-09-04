/******************  guest/productlist.jsp ******************/



function productDetail(no){

	document.detailFrm.no.value=no;

	document.detailFrm.submit();

}

/******************  guest/cartlist.jsp ******************/

function cartUpdate(form){

	form.flag.value="update";

	form.submit();

}

function cartDelete(form){

	form.flag.value="delete";

	form.submit();

}




