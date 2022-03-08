import requests
import json

def buscar_dados():
    request = requests.get("https://imn8hmv8w6.execute-api.sa-east-1.amazonaws.com/api-python")
    #print(request.content)
    dados=json.loads(request.content)
    #print(dados)
    print(dados['Host_IP'])

if __name__ == '__main__':
    buscar_dados()