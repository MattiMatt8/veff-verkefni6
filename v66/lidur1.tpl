<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verkefni 6</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<div class="container">
  <form method="post" action="/afrit" accept-charset="ISO-8859-1">
      Nafn:         <input name="nafn" type="text" required autofocus />
      Heimilisfang: <input name="heimilisfang" type="text" required/>
      Netfang:      <input name="netfang" type="email" required placeholder="mail@mail.com" />
      Símanúmer:    <input name="simanumer" type="tel" pattern="[0-9-]{7,8}" placeholder="1234567" required/>
      <h3>Hversu stóra pizzu viltu?</h3>
      <div class="utanum">
      	<input type="radio" name="tomma" value="9 Tomma" id="9" checked>
      	<label for="9"> 9 tomma - 1000kr</label>
      </div>
   	<div class="utanum">
   		<input type="radio" name="tomma" value="12 Tomma" id="12"> 
   		<label for="12"> 12 tomma - 1500kr</label>
   	</div>
   	<div class="utanum">
   		<input type="radio" name="tomma" value="18 Tomma" id="18">
   		<label for="18"> 18 tomma - 2000kr</label>
   	</div>
      <h3>Hvaða álegg viltu? (200kr per álegg)</h3>
    	<div class="utanum">
    		<input type="checkbox" name="alegg" value="Skinka" id="s">
    		<label for="s"> Skinka</label>
    	</div>
    	<div class="utanum">
    		<input type="checkbox" name="alegg" value="Ananas" id="a">
    		<label for="a"> Ananas</label>
    	</div>
    	<div class="utanum">
    		<input type="checkbox" name="alegg" value="Pepperoni" id="p">
    		<label for="p"> Pepperoni</label>
    	</div>
      <div class="utanum-t">
      	<div class="takkar">
    	    <input value="Panta" type="submit" />
    	    <input value="Hreinsa" type="reset" />
      	</div>
        <div class="takkar ta">
          <a href="/" class="tilbaka">Til baka</a>
        </div>
      </div>
    </form>
</div>
</body>
</html>