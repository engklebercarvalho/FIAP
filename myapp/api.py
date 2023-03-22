
from flask import Flask, jsonify, request
import socket
  
app = Flask(__name__)

host_name = socket.gethostname()
host_ip = socket.gethostbyname(host_name)
  
@app.route('/listaCliente', methods=['GET'])
def helloworld():
    if(request.method == 'GET'):
        data = {"Nome": "Kleber",
                "Sobrenome":"de Carvalho",
                "Cidade":"São Paulo/SP"}
        return jsonify(data)
  
@app.route('/listaCliente', methods=['GET'])
def helloworld():
    if(request.method == 'GET'):
        data = {"Produto1": "Camisa",
                "Produto2":"Calça",
                "Produto3":"Tênis"}
        return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0",port=80)
