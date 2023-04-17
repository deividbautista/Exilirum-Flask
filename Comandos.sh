# Comand for generate a requirements.txt
pip freeze > requirements.sh
# or pip freeze > requirements.txt

# Comand for generate a virtualenv
python -m virtualenv env

# Comand for activate the virtualenv
source env\Scripts\activate


# comand for install requirements
pip install -r requirements.sh
# or pip install -r requirements.txt