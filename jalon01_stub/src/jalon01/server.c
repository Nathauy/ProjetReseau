#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

int do_socket(int domaine, int type, int protocole) {
    int sock; 
    sock = socket(domaine, type, protocole);
    if (sock == -1) {
        fprintf(stderr, "Error : socket\n");
        return -1; 
    } 
    return sock; 
}

struct sockaddr_in init_serv_addr(int port) {
    struct sockaddr_in sin; 
    sin.sin_family = AF_INET; 
    sin.sin_port = htons(port); 
    sin.sin_addr.s_addr = INADDR_ANY; 
    return sin;
}

int do_bind(int sock, const struct sockaddr *adr, int adrlen) {
    int link; 
    link = bind(sock, adr, adrlen); 
    if (link == -1) {
        fprintf(stderr, "Error : bind\n");
        return -1; 
    }
    printf("bind : %d\n", link); 
    return link; 
}

int do_listen(int sock, int backlog) {
    int lis; 
    lis = listen(sock, backlog);
    if(lis == -1) {
        fprintf(stderr, "Error : listen\n");
        return -1; 
    }
    printf("listen : %d\n", lis); 
    return lis; 
}

int do_accept(int sock, struct sockaddr* addr, socklen_t* addrlen) {
    int acc; 
    acc = accept(sock, addr, addrlen); 
    if(acc == -1) {
        //fprintf(stderr, "Error : accept\n");   
        return acc; 
    }
    printf("accept : %d\n", acc); 
    return acc; 
}

int do_read(int sockfd, char* buf, int len) {
    int r = read(sockfd, buf, len); 
    if(r == -1) {
        fprintf(stderr, "Error : read\n"); 
        return -1; 
    } else if (r == 0) {
        fprintf(stdout, "End of File \n"); 
        return 0; 
    }
    printf("read : %d\n", r);
    return r; 
}

ssize_t do_write(int fd, const void *buf, size_t count) {
    ssize_t w = write(fd, buf, count); 
    if (w == -1) {
        fprintf(stderr, "Error : write\n"); 
        return -1; 
    }
    return w; 
}

int main(int argc, char** argv)
{

    if (argc != 2)
    {
        fprintf(stderr, "usage: RE216_SERVER port\n");
        return 1;
    }

    int sock, link, lis, acc, len, N;
    ssize_t w; 

    


    //creation of the socket
    sock = do_socket(AF_INET, SOCK_STREAM, 0); 

    //initiation of the server
    const struct sockaddr_in sin = init_serv_addr(atoi(argv[1])); 

    //bind
    link = do_bind(sock, (struct sockaddr*) &sin, sizeof(sin)); 

     //specify the socket to be a server socket and listen for at most 20 concurrent client
    lis = do_listen(sock, 20); 

    //for the do_write
    char writebuf[20];
    size_t nbytes; 
    strcpy(writebuf, "This is a test\n"); 
    nbytes = strlen(writebuf);


    for (;;)
    {
        char* buff = malloc(N); 
        memset(buff, 0, N);
        N = 1024; 
        //empty socket of listening of the client.
        const struct sockaddr_in sinclient;  
        socklen_t siz = sizeof(sinclient);

        //accept connection from client, return the value of the result socket
        acc = do_accept(sock, (struct sockaddr*) &sinclient, &siz);

        //read what the client has to say
        len = do_read(acc, buff, N);
        printf("%s\n",buff);

        //we write back to the client
        w = do_write(acc, writebuf, nbytes); 

        //clean up client socket
        close(acc); 
    }

    //clean up server socket
    close(sock);
    return 0;
}
