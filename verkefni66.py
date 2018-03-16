from bottle import *
import os, csv

@route('/')
def index():
    return template('v66/index')

@route('/lidur1')
def index():
    return template('v66/lidur1')

@route('/lidur2')
def index():
    return template('v66/lidur2')

@post('/afrit')
def afrit():
    nafn = request.forms.get('nafn')
    heimilisfang = request.forms.get('heimilisfang')
    netfang = request.forms.get('netfang')
    simanumer = request.forms.get('simanumer')
    tomma = request.forms.get('tomma')
    alegg = request.forms.getall('alegg')
    tommaVerd = {"9 Tomma":1000,"12 Tomma":1500,"18 Tomma":2000}
    heildarverd = len(alegg)*200 + tommaVerd[tomma]
    return template('v66/afrit',nafn=nafn,heimilisfang=heimilisfang,netfang=netfang,simanumer=simanumer,tomma=tomma,alegg=alegg,heildarverd=heildarverd)

@post('/signup')
def signup():
    with open("v66/notendur.csv","r",encoding="utf-8") as f:
        data = csv.reader(f, delimiter=';')
        data = list(data)
    notendanafn = request.forms.get('notendanafn')
    netfang = request.forms.get('netfang')
    lykilord = request.forms.get('lykilord')
    netfangTil = False
    notandiTil = False
    for notandi in data:
        if notandi[0] == notendanafn:
            notandiTil = True
        if notandi[1] == netfang:
            netfangTil = True
    if notandiTil == True:
        return template('v66/signup',texti = "Notendanafn nú þegar í notkun")
    elif netfangTil == True:
        return template('v66/signup',texti = "Netfang nú þegar í notkun")
    else:
        data.append([notendanafn,netfang,lykilord])
        with open("v66/notendur.csv","w",encoding="utf-8",newline="\n") as f:
            writer = csv.writer(f,delimiter=";")
            writer.writerows(data)
        return template('v66/signup',texti = "Notandi hefur verið stofnaður, velkominn!")

@route('/css/<skjal>')
def server_static(skjal):
    return static_file(skjal, root='./v66/css')

@error(404)
def villa404(error):
    return '''
    <h2>Error 404</h2>
    <h3>Síða fannst ekki</h3>
    <a href="/">Til Baka</a>
    '''

@error(500)
def villa500(error):
    return '''
    <h2>Error 500</h2>
    <h3>Villa í forritinu</h3>
    <a href="/">Til Baka</a>
    '''

#run(host="0.0.0.0", port=os.environ.get('PORT'))
run(host='localhost', port=80, debug=True, reloader=True)