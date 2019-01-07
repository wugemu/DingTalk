.class Lcom/laiwang/protocol/android/i$a;
.super Lcom/laiwang/protocol/android/bu$a;
.source "RealTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:[B


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 95
    const-string/jumbo v0, "udp log"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/laiwang/protocol/android/i$a;->a:[B

    .line 97
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-static {}, Lcom/laiwang/protocol/android/i;->a()Ljava/net/InetAddress;

    move-result-object v0

    .line 102
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_2

    .line 106
    const v6, -0x5fffffff

    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 108
    :cond_2
    const/4 v4, 0x0

    .line 110
    .local v4, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    iget-object v6, p0, Lcom/laiwang/protocol/android/i$a;->a:[B

    invoke-static {v6}, Lcom/laiwang/protocol/android/i;->a([B)[B

    move-result-object v3

    .line 111
    .local v3, "payload":[B
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .local v5, "socket":Ljava/net/DatagramSocket;
    const/16 v6, 0x3e8

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 113
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v6, v3

    sget v7, Lcom/laiwang/protocol/android/i;->d:I

    invoke-direct {v1, v3, v6, v0, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 114
    .local v1, "dataGramPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v5, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 115
    .end local v1    # "dataGramPacket":Ljava/net/DatagramPacket;
    .end local v3    # "payload":[B
    .end local v5    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "[UDP] send error"

    invoke-static {v6, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    throw v6

    .line 118
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v3    # "payload":[B
    .restart local v5    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    goto :goto_2

    .line 115
    .end local v4    # "socket":Ljava/net/DatagramSocket;
    .restart local v5    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "socket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method
