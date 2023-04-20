# comand for install requirements
pip install -r requirements.sh
# or pip install -r requirements.txt


# Comand for generate a virtualenv
python -m virtualenv env

# Comand for activate the virtualenv
source env/Scripts/activate
# or env\Scripts\activate

# Comand for deactivate the virtualenv
deactivate


# Comand for run app 
python .\app\app.py
# or python3 .\app\app.py


# Comand for generate a requirements.txt
pip freeze > requirements.sh
# or pip freeze > requirements.txt