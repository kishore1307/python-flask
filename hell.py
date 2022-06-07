from flask import Flask

app = Flask(__name__)
port = 5000

@app.route('/')
def home():
    return "Hello World!"

@app.route('/<page_name>')
def other_page(page_name):
    response = make_response('The page named %s does not exist.' \
                             % page_name, 404)
    return response

if __name__ == '__main__':
#    app.run(debug=True)
      app.run(host="0.0.0.0", port=port)
