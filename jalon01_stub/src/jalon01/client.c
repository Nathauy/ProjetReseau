#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

#include <sys/types.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netdb.h>


int do_socket(int domaine, int type, int protocole) {
    int sock; 
    sock = socket(domaine, type, protocole);
    if (sock == -1) {
        fprintf(stderr, "Error : socket\n");
        return -1; 
    } 
    return sock; 
}

struct sockaddr_in get_addr_info(int port, char* address) {
    struct sockaddr_in sin; 
    sin.sin_family = AF_INET; 
    sin.sin_port = htons(port);
    inet_aton(address, &sin.sin_addr);
    return sin;
}


int do_connect(int sock, const struct sockaddr *adr, int adrlen) {
    int con; 
    con = connect(sock, adr, adrlen); 
    if (con == -1) {
        fprintf(stderr, "Error : connect\n");
        return -1; 
    }
    fprintf(stdout, "Connection established\n");
    return con; 
}

int readline(int sock,char* buf,int len){
    int r;
    r=read(sock,buf,len);
    if (r == -1) {
        fprintf(stderr, "Error : reading\n");
        return -1; 
    }
    fprintf(stdout, "reading completed\n");
    return r; 
}

int handle_client_message(int sock,const void *msg,size_t len,int flags){
    int sd;
    sd=send(sock,msg,len,flags);
    if(sd==-1){
        fprintf(stderr,"error sending message\n");
        return -1;
    }
    fprintf(stdout,"sending completed\n");
    return sd;
}

int main(int argc,char** argv)
{


    if (argc != 3)
    {
        fprintf(stderr,"usage: RE216_CLIENT hostname port\n");
        return 1;
    }

    int sock, con;
    int len; 

    sock = do_socket(AF_INET, SOCK_STREAM, 0); 
    //get address info from the server
    const struct sockaddr_in sin = get_addr_info(atoi(argv[2]),argv[1]); 
    //connect to remote socket
    con = do_connect(sock, (struct sockaddr*) &sin, sizeof(sin));
    printf("%d\n", con); 

    //get user input
    int N = 1024; 
    char* buffer = malloc(N); 
    memset(buffer, 0, N);
    int r=readline(STDIN_FILENO,buffer,N);

    //send message to the server
    handle_client_message(sock,buffer,r,0);

    return 0;


}
