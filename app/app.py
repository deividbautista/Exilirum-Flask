# Importamos la librería de Flask
from flask import Flask

# Creamos una instancia de Flask
app = Flask(__name__)

# Definimos la ruta de la aplicación
@app.route('/')
def index():
    return 'Hola Mundo'

# Ejecutamos la aplicación
if __name__ == '__main__':

    # Activamos el modo debug
    app.debug = True

    # Ejecutamos la aplicación
    app.run()