// a payment info is filled out
// a payment is checked out
// request to the api
// 1. showing process
// 2. notify success / fail
// redirect to result iframe page

(function(gl) {
	var style = document.createElement("style");
	document.head.appendChild(style);
	style.sheet.insertRule(
		"iframe {width: 50%;height: 500px;margin: 0 auto;display:block;} "
	);
	style.sheet.insertRule("form{ margin: 0 auto;width: 90%;} ");
	var param = {};
	gl.q.forEach(function(el) {
		param[el[0]] = el[1];
	});

	var h1 = document.createElement("H1");
	var text = document.createTextNode("Payment on process...");
	h1.appendChild(text);
	document.querySelector("body").appendChild(h1);
	var xmlhttp = new XMLHttpRequest(); // new HttpRequest instance
	xmlhttp.open(
		"POST",
		1 === 1
			? "https://apistaging.getloy.com/transactions"
			: "https://api.getloy.com/transactions"
	);
	xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	xmlhttp.onreadystatechange = function() {
		if (this.readyState !== 4) return;
		const response = { body: null };
		response.body = JSON.parse(this.response);
		// console.log(response);
		if (this.status == 200) {
			if (
				(param.payload.provider === "ipay88_kh" &&
					((param.payload.provider_variant &&
						["wing", "acledaxpay"].indexOf(param.payload.provider_variant) !==
							-1) ||
						(!param.payload.provider_variant &&
							param.payload.payment_provider &&
							param.payload.payment_provider.payment_method_id &&
							[
								123, // Wing
								3, // Acleda XPAY
							].indexOf(param.payload.payment_provider.payment_method_id) !==
								-1))) ||
				param.payload.provider === "pipay_alipay_kh"
			) {
				alert("browser not support iframe");
			} else {
				function getData(query) {
					var result = {};
					if (query) {
						query.split("&").forEach(function(part) {
							var item = part.split("=");
							result[item[0]] = decodeURIComponent(item[1]);
						});
					}
					return result;
				}
				// 1. ++ show progress here
				// 2. ++ create a blank form

				var body = document.querySelector("body");
				// form
				var form = document.createElement("form");
				form.setAttribute("target", "iframe");
				form.action = response.body.result.request.url;
				form.method = response.body.result.request.method;
				body.appendChild(form);
				//++ show the iframe
				var formData = getData(response.body.result.request.body);
				var el = {};
				Object.keys(formData).forEach(function(key) {
					el[key] = document.createElement("input");
					el[key].setAttribute("type", "text");
					el[key].setAttribute("value", formData[key]);
					el[key].setAttribute("name", key);
					form.appendChild(el[key]);
				});

				// iframe
				var iframe = document.createElement("iframe");
				iframe.setAttribute("name", "iframe");
				body.appendChild(iframe);

				form.submit();
				body.removeChild(h1);
			}
		} else {
			//error callback
			console.log(`getloy 😡 us ${JSON.stringify(response)}`);
			if (
				!response ||
				!response.body ||
				!response.body.status ||
				response.body.status !== "success"
			) {
				console.log("Error processing payment request", response.body);
				alert("Encounter problem please try again ...");
			}
		}
	};
	xmlhttp.send(JSON.stringify(param.payload));
})(gl);
