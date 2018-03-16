
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verkefni 6</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<div class="container">
  <form method="post" action="/signup">
      Notendanafn:
      <input 
        name="notendanafn" 
        type="text"
        pattern="(?=.*[a-z])(?=.*[A-Z])[^\s][a-zA-Z0-9]{3,}" 
        placeholder="Kalli"  
        required 
        autofocus 
      />
      <h5>4 lámark lengd, engin bil, aðeins bókstafir úr ensku stafrófinu, amk 1 hástafur og 1 lágstafur</h5>
      Netfang:
      <input 
        name="netfang" 
        type="email"  
        placeholder="mail@mail.com" 
        required
      />
      Lykilorð:
      <input 
        name="lykilord" 
        type="password" 
        pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[^\s][a-zA-Z0-9]{3,}"
        placeholder="Password" 
        required
      />
      <h5>4 lámark lengd, engin bil, aðeins bókstafir úr ensku stafrófinu, amk 1 hástafur og 1 lágstafur og 1 tölustafur</h5>
      <div class="utanum-t">
      	<div class="takkar">
    	    <input value="Submit" type="submit" />
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