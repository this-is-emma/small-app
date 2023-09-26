from flask import Flask, render_template
from db import getToDo
import os

app = Flask(__name__)

todo = getToDo()

@app.route("/")
def home():
    # todo = ['wash', False]
    return render_template("index.html", Todo=todo)


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)
