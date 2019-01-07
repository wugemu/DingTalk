.class public Lcom/alibaba/lightapp/runtime/plugin/net/vpn/DTSangforTunnelSocket;
.super Ljava/lang/Object;
.source "DTSangforTunnelSocket.java"


# static fields
.field private static final DATA_LEN:I = 0x80

.field private static final DEFAULT_TIMEOUT:I = 0xc8

.field private static final DEST_IP:Ljava/lang/String; = "1.1.1.1"

.field private static final DEST_PORT:I = 0x457

.field private static final SF_ACK_ONLINE:Ljava/lang/String; = "0"

.field private static final SF_SEND_MAGIC:Ljava/lang/String; = "SFL3VPN"

.field private static final TAG:Ljava/lang/String; = "DTSangforTunnelSocket"

.field private static final VPN_QUERY_REQUEST:Ljava/lang/String; = "sfminiconnect://sslvpnclient/vpn_query?"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectTunnel(Ljava/lang/String;)Z
    .locals 12
    .param p0, "vpnHost"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x80

    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "online":Z
    new-array v3, v9, [B

    .line 37
    .local v3, "receiveBuff":[B
    const/4 v7, 0x0

    .line 43
    .local v7, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v8, Ljava/net/DatagramSocket;

    invoke-direct {v8}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v7    # "socket":Ljava/net/DatagramSocket;
    .local v8, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/plugin/net/vpn/DTSangforTunnelSocket;->getSendMessage(Ljava/lang/String;)[B

    move-result-object v5

    .line 48
    .local v5, "sendMessage":[B
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v9, v5

    const-string/jumbo v10, "1.1.1.1"

    .line 49
    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    const/16 v11, 0x457

    invoke-direct {v6, v5, v9, v10, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 51
    .local v6, "sendPacket":Ljava/net/DatagramPacket;
    new-instance v4, Ljava/net/DatagramPacket;

    const/16 v9, 0x80

    invoke-direct {v4, v3, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 53
    .local v4, "receivePacket":Ljava/net/DatagramPacket;
    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 54
    invoke-virtual {v8, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 56
    invoke-virtual {v8, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 57
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    .line 58
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v10

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    invoke-direct {v2, v9, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 60
    .local v2, "receive":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 62
    const-string/jumbo v9, "0"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 70
    :cond_0
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    move-object v7, v8

    .line 73
    .end local v2    # "receive":Ljava/lang/String;
    .end local v4    # "receivePacket":Ljava/net/DatagramPacket;
    .end local v5    # "sendMessage":[B
    .end local v6    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v8    # "socket":Ljava/net/DatagramSocket;
    .restart local v7    # "socket":Ljava/net/DatagramSocket;
    :cond_1
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v7, :cond_1

    .line 70
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v7, :cond_2

    .line 70
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v9

    .line 69
    .end local v7    # "socket":Ljava/net/DatagramSocket;
    .restart local v8    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "socket":Ljava/net/DatagramSocket;
    .restart local v7    # "socket":Ljava/net/DatagramSocket;
    goto :goto_2

    .line 66
    .end local v7    # "socket":Ljava/net/DatagramSocket;
    .restart local v8    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "socket":Ljava/net/DatagramSocket;
    .restart local v7    # "socket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method

.method private static getSendMessage(Ljava/lang/String;)[B
    .locals 5
    .param p0, "vpnHost"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v1, "sfminiconnect://sslvpnclient/vpn_query?magic=%s&vpnhost=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "SFL3VPN"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "requestUri":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method
