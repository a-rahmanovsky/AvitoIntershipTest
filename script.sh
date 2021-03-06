#!/bin/bash
sudo apt install python3-venv
python3 -m venv env
source env/bin/activate
pip install flask
pip install flask-migrate
pip install flask-sqlalchemy
export FLASK_APP=app.py
flask db init
flask db migrate -m "stat table"
flask db upgrade
flask run