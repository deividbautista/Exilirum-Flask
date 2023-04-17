
#Importando Libreria mysql.connector para conectar Python con MySQL
import mysql.connector


# Funcion para conectar con la base de datos
def connectionBD():

    # Conexion a la base de datos
    mydb = mysql.connector.connect(

        # Datos de conexion
        host ="localhost",
        user ="root",
        passwd ="",
        database = "exilirum"
        )
    
    # Retornando la conexion
    if mydb:
        print ("Conexion exitosa a BD")
        return mydb
    
    # Retornando error en la conexion
    else:
        print("Error en la conexion a BD")


# Llamando a la funcion connectionBD
connectionBD()