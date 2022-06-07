#from flask import Flask
from flask import Flask, session
from flask import request, make_response, session, g, Response
from datetime import timedelta
import time

app = Flask(__name__)
port = 5000
app.config['SECRET_KEY'] = 'AJDJRJS24$($(#$$33--'


#@app.before_request
#def before_request():
#    session.permanent = True
#    app.permanent_session_lifetime = timedelta(seconds=10)
    
@app.route('/')
def home():
#    time.sleep(11)
    return "Hello World!"

@app.route('/delay')
def homedelay():
    time.sleep(11)
    return "Hello Delayed World!"

@app.route('/save', methods=['POST'])
def save():
    response = make_response(redirect(url_for('index')))
    data = get_saved_data()
    data.update(dict(request.form.items()))
    response.set_cookie('character', json.dumps(data))
    return response

if __name__ == '__main__':
#      app.run(debug=True)
      app.run(host="0.0.0.0", port=port)
