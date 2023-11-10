from flask import Flask, render_template

# Constructor principal para ejecutar el sistema de información.
app = Flask(__name__)

@app.route("/")
def login():
    return render_template("login/login.html")

if __name__ == "__main__":
    app.run(debug=True, port=4060)