<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verkefni 6</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<div class="container afrit">
	<p><strong>Nafn:</strong> {{nafn}}</p>
	<p><strong>Heimilisfang:</strong> {{heimilisfang}}</p>
	<p><strong>Netfang:</strong> {{netfang}}</p>
	<p><strong>Símanúmer:</strong> {{simanumer}}</p>
	<p><strong>Stærð pizzu:</strong> {{tomma}}</p>
	<p><strong>Áleggstegundir:</strong>
		%for x in alegg:
			%if x != alegg[len(alegg)-1]:
				{{x}},
			%else:
				{{x}}
			%end
		%end
		%if len(alegg) == 0:
			Ekkert álegg
		%end
	</p>
	%mvsk = format(heildarverd * 1.25,".0f")
	<p><strong> Heildarverð:</strong> {{heildarverd}} kr.</p>
	<p><strong> Heildarverð m/vsk:</strong> {{mvsk}} kr.</p>
    <a href="/lidur1" class="tilbaka">Til baka</a>
</div>
</body>
</html>