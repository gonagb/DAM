import subprocess

class Gonchodb:
    def __init__(self,basededatos):
        self.basededatos = basededatos
    def insert(self,coleccion,documento,contenido):
        self.operacion = "insert"
        self.coleccion = coleccion
        self.documento = documento
        self.contenido = contenido
        ##  Uso: gonchodb.exe [operacion] [basededatos] [coleccion] [documento] [contenido]
        comando = '"C:\\Users\\srgon\\Documents\\GitHub\\DAM\\2ºDAM\\Acceso a Datos\\2nd Trimestre\\GonchoDB\\gonchodb.exe" '+self.operacion+' '+self.basededatos+' '+self.coleccion+' '+self.documento+' "'+self.contenido+'"'
        resultado = subprocess.run(comando,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
        if resultado.returncode == 0:
            return("OK")
        else:
            return("KO")