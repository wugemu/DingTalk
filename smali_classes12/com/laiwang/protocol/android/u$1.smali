.class Lcom/laiwang/protocol/android/u$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPBioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/u;->a(Ljava/net/URI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URI;

.field final synthetic b:Lcom/laiwang/protocol/android/u;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;Ljava/net/URI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/u;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    iput-object p3, p0, Lcom/laiwang/protocol/android/u$1;->a:Ljava/net/URI;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 106
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    if-eq v2, v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string/jumbo v2, "T_B Con start : %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/u;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->a:Ljava/net/URI;

    if-nez v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/k$c;

    .line 111
    .local v1, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v1, :cond_2

    .line 112
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "url is null"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Lcom/laiwang/protocol/android/k$c;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 115
    .end local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_3
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->a:Ljava/net/URI;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Ljava/net/URI;)Ljava/net/URI;

    .line 116
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 117
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/k$c;

    .line 118
    .restart local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v1, :cond_4

    .line 119
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-interface {v1, v3}, Lcom/laiwang/protocol/android/k$c;->c(Lcom/laiwang/protocol/android/k;)V

    goto :goto_2

    .line 121
    .end local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_5
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->c(Lcom/laiwang/protocol/android/u;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 122
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->c(Lcom/laiwang/protocol/android/u;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 125
    :cond_6
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$1;->a:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/laiwang/protocol/android/u$1;->a:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    .line 126
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Ljava/net/Socket;)Ljava/net/Socket;

    .line 127
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 128
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 129
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 130
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->e(Lcom/laiwang/protocol/android/u;)Ljava/net/InetSocketAddress;

    move-result-object v3

    const/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 131
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->g(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->f(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 133
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 134
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 135
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;Ljava/net/Socket;)V

    .line 136
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 137
    const-string/jumbo v2, "T_B Con suc >> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/u;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/k$c;

    .line 140
    .restart local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-eq v3, v4, :cond_7

    .line 141
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-interface {v1, v3}, Lcom/laiwang/protocol/android/k$c;->b(Lcom/laiwang/protocol/android/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 144
    .end local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "T_B Con err"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 147
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/k$c;

    .line 148
    .restart local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v1, :cond_8

    .line 149
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-interface {v1, v3, v0}, Lcom/laiwang/protocol/android/k$c;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$1;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->h(Lcom/laiwang/protocol/android/u;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
