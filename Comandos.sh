# Comand for generate a requirements.txt
pip freeze > requirements.sh
# or pip freeze > requirements.txt

# Comand for generate a virtualenv
python -m venv venv

# Comand for activate the virtualenv
source venv\bin\activate


# comand for install requirements
python install -r requirements.sh
# or python install -r requirements.txt