import mysql.connector


def connectionBD():
    # Conexion a la base de datos
    mydb = mysql.connector.connect(
        # Datos de conexion
        host="localhost",
        user="root",
        passwd="",
        database="exilirum",
    )
    if mydb:
        print("Conexion exitosa a BD")
        return mydb
    else:
        print("Error en la conexion a BD")


connectionBD()