from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
  return """
  <h1>Python Flask in Docker!</h1>
  <p>This web app is successfully running on port 9000 using Docker, 5000 without using Docker.</p>
  """

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')