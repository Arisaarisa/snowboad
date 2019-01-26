from flask import Flask, render_template, request, redirect
import db

app = Flask(__name__)

"""
/index で GETリクエストが来たら
index.html というテンプレートをレンダリングする
"""


@app.route("/index")
def index():
    customers = db.find_all_customers()
    return render_template("index.html",
                           customers=customers)


@app.route("/add", methods=["POST"])
def add_customer():
    """新規の顧客を追加する関数"""
    # フォームに入力されたデータを取得する
    name = request.form["name"]
    age = request.form["age"]
    sex = request.form["sex"]
    home = request.form["home"]

    # データをデータベースに保存する
    db.add_customer(name, age, sex, home)

    # index()にリダイレクトする
    return redirect("/index")


if __name__ == "__main__":
    app.run(debug=True)
