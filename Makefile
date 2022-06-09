CC=gcc
FLAGS=-g
SERVER_CODE=server.c
CLIENT_CODE=client.c
SERVER_OUTPUT=server
CLIENT_OUTPUT=client

make:
	$(CC) $(FLAGS) $(SERVER_CODE) -o $(SERVER_OUTPUT)
	$(CC) $(FLAGS) $(CLIENT_CODE) -o $(CLIENT_OUTPUT)

server: make
	./$(SERVER_OUTPUT) 

client: make
	./$(CLIENT_OUTPUT) 
