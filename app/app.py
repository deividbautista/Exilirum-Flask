# Importamos la librería de Flask
# Importamos la librería de render_template para poder renderizar los templates
from flask import Flask, render_template

#-------------------------IMPORTS BOOKSTORES---------------------#



#-------------------------CREATE APP---------------------#
# Creamos una instancia de Flask
app = Flask(__name__)

# Definimos la ruta principal con el archivo home.html
@app.route('/')
def home():
    return render_template('pages/home.html')



#-------------------------Ejecutando la aplicación---------------------#
# Ejecutamos la aplicación
if __name__ == '__main__':

    # Activamos el modo debug para que se recargue la página
    app.debug = True

    # Ejecutamos la aplicación
    app.run()