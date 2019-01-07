.class Lcom/ta/audid/upload/UtdidSslSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "UtdidSslSocketFactory.java"


# instance fields
.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private peerHost:Ljava/lang/String;

.field private setHostNameMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 30
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 33
    iput-object p1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 10
    .param p1, "plainSocket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v5, ""

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "peerHost"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p2, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "port"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "autoClose"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-static {v5}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v4

    check-cast v4, Landroid/net/SSLCertificateSocketFactory;

    .line 79
    .local v4, "sslSocketFactory":Landroid/net/SSLCertificateSocketFactory;
    invoke-static {}, Lcom/ta/audid/upload/UtdidTrustManager;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 81
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "createSocket"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    .line 84
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 85
    .local v0, "address":Ljava/net/InetAddress;
    if-eqz p4, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 89
    :cond_0
    invoke-virtual {v4, v0, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 94
    .end local v0    # "address":Ljava/net/InetAddress;
    .local v3, "ssl":Ljavax/net/ssl/SSLSocket;
    :goto_0
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "createSocket end"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 99
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_2

    .line 100
    iget-object v5, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 114
    :goto_1
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 115
    .local v2, "session":Ljavax/net/ssl/SSLSession;
    iget-object v5, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v6, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 116
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot verify hostname: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    .end local v2    # "session":Ljavax/net/ssl/SSLSession;
    .end local v3    # "ssl":Ljavax/net/ssl/SSLSocket;
    :cond_1
    iget-object v5, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, p3, v6}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .restart local v3    # "ssl":Ljavax/net/ssl/SSLSocket;
    goto :goto_0

    .line 103
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setHostname"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    .line 105
    iget-object v5, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 107
    :cond_3
    iget-object v5, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->setHostNameMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "SNI not useable"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "session":Ljavax/net/ssl/SSLSession;
    :cond_4
    const-string/jumbo v5, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "SSLSession PeerHost"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/ta/audid/upload/UtdidSslSocketFactory;

    if-nez v2, :cond_1

    .line 132
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 128
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/ta/audid/upload/UtdidSslSocketFactory;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    .line 129
    .local v0, "thatHost":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/ta/audid/upload/UtdidSslSocketFactory;->peerHost:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
