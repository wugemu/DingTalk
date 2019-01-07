.class public Lcom/laiwang/protocol/android/q;
.super Ljava/lang/Object;
.source "NioChannelPoll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/q$a;
    }
.end annotation


# static fields
.field private static a:Lcom/laiwang/protocol/android/q;


# instance fields
.field private b:Ljava/nio/channels/Selector;

.field private c:Lcom/laiwang/protocol/android/bu;

.field private volatile d:Z

.field private e:Lcom/laiwang/protocol/android/q$a;

.field private f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/laiwang/protocol/android/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/q;->d:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/q;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 35
    new-instance v0, Lcom/laiwang/protocol/android/bt;

    const-string/jumbo v1, "tcp-nio-work"

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/q;->c:Lcom/laiwang/protocol/android/bu;

    .line 36
    new-instance v0, Lcom/laiwang/protocol/android/q$a;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/q$a;-><init>(Lcom/laiwang/protocol/android/q;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/q;->e:Lcom/laiwang/protocol/android/q$a;

    .line 37
    return-void
.end method

.method public static declared-synchronized a()Lcom/laiwang/protocol/android/q;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/laiwang/protocol/android/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/android/q;->a:Lcom/laiwang/protocol/android/q;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/laiwang/protocol/android/q;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/q;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/q;->a:Lcom/laiwang/protocol/android/q;

    .line 42
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/android/q;->a:Lcom/laiwang/protocol/android/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J)V
    .locals 7
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/laiwang/protocol/android/q;->d()V

    .line 122
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 123
    iget-object v4, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    invoke-virtual {v4, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v4

    if-nez v4, :cond_2

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[tcp] nio select timeout "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 131
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 134
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    :try_start_0
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 135
    const-string/jumbo v4, "[tcp] nio selectKey invalid"

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/r;

    .line 151
    .local v0, "connection":Lcom/laiwang/protocol/android/r;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[tcp] nio select exp >> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/laiwang/protocol/android/q;->a(Lcom/laiwang/protocol/android/r;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 139
    .end local v0    # "connection":Lcom/laiwang/protocol/android/r;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 140
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    invoke-direct {p0, v3}, Lcom/laiwang/protocol/android/q;->a(Ljava/nio/channels/SelectionKey;)V

    .line 143
    :cond_5
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 144
    invoke-direct {p0, v3}, Lcom/laiwang/protocol/android/q;->b(Ljava/nio/channels/SelectionKey;)V

    .line 146
    :cond_6
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    invoke-direct {p0, v3}, Lcom/laiwang/protocol/android/q;->c(Ljava/nio/channels/SelectionKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/q;J)V
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/q;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/laiwang/protocol/android/q;->a(J)V

    return-void
.end method

.method private a(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/r;

    .line 178
    .local v1, "connection":Lcom/laiwang/protocol/android/r;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 180
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-interface {v1, v1}, Lcom/laiwang/protocol/android/r;->b(Lcom/laiwang/protocol/android/k;)V

    .line 183
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 184
    invoke-direct {p0}, Lcom/laiwang/protocol/android/q;->e()V

    .line 186
    :cond_0
    return-void
.end method

.method private declared-synchronized b()Ljava/nio/channels/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/nio/channels/SelectionKey;)V
    .locals 8
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/r;

    .line 193
    .local v1, "connection":Lcom/laiwang/protocol/android/r;
    const-string/jumbo v4, "[tcp] nio start read >> %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Lcom/laiwang/protocol/android/r;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 195
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-interface {v1}, Lcom/laiwang/protocol/android/r;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 196
    .local v3, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 198
    :goto_0
    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 199
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 200
    return-void

    .line 201
    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[tcp] nio read -1 >> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 203
    sget-object v4, Lcom/laiwang/protocol/android/k;->b:Lcom/laiwang/protocol/android/k$b;

    throw v4

    .line 205
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    invoke-interface {v1, v1, v3}, Lcom/laiwang/protocol/android/r;->a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V

    .line 208
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v2, p0, Lcom/laiwang/protocol/android/q;->d:Z

    if-eqz v2, :cond_0

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 85
    .local v1, "selector":Ljava/nio/channels/Selector;
    :try_start_1
    invoke-direct {p0}, Lcom/laiwang/protocol/android/q;->b()Ljava/nio/channels/Selector;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 89
    :goto_1
    if-eqz v1, :cond_1

    .line 90
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/laiwang/protocol/android/q;->d:Z

    .line 91
    const-string/jumbo v2, "[tcp] nio start listen"

    invoke-static {v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/laiwang/protocol/android/q;->c:Lcom/laiwang/protocol/android/bu;

    iget-object v3, p0, Lcom/laiwang/protocol/android/q;->e:Lcom/laiwang/protocol/android/q$a;

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bu;->c(Lcom/laiwang/protocol/android/bu$a;)V

    .line 94
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 86
    .restart local v1    # "selector":Ljava/nio/channels/Selector;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "[tcp] nio get selector err"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private c(Ljava/nio/channels/SelectionKey;)V
    .locals 7
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 216
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/r;

    .line 217
    .local v2, "connection":Lcom/laiwang/protocol/android/r;
    invoke-interface {v2}, Lcom/laiwang/protocol/android/r;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 218
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1

    .line 219
    const-string/jumbo v3, "[tcp] nio write run >> %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/laiwang/protocol/android/r;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 221
    .local v1, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 228
    .end local v1    # "channel":Ljava/nio/channels/SocketChannel;
    :cond_0
    :goto_0
    invoke-interface {v2, v2}, Lcom/laiwang/protocol/android/r;->a(Lcom/laiwang/protocol/android/k;)V

    .line 229
    return-void

    .line 226
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3, v6}, Lcom/laiwang/protocol/android/q;->a(Ljava/nio/channels/SelectionKey;IZ)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    :goto_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/q;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/r;

    .local v0, "connection":Lcom/laiwang/protocol/android/r;
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Lcom/laiwang/protocol/android/r;->c()Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "url is null"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v0, v2}, Lcom/laiwang/protocol/android/r;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_0
    :try_start_0
    invoke-interface {v0, v0}, Lcom/laiwang/protocol/android/r;->c(Lcom/laiwang/protocol/android/k;)V

    .line 166
    invoke-interface {v0}, Lcom/laiwang/protocol/android/r;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v0, v1}, Lcom/laiwang/protocol/android/r;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->b:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/r;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/r;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/laiwang/protocol/android/q;->c()V

    .line 52
    invoke-direct {p0}, Lcom/laiwang/protocol/android/q;->e()V

    .line 53
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/r;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/r;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 232
    invoke-interface {p1, p1, p2}, Lcom/laiwang/protocol/android/r;->b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    .line 233
    return-void
.end method

.method a(Ljava/nio/channels/SelectionKey;IZ)V
    .locals 5
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .param p2, "op"    # I
    .param p3, "state"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 247
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 249
    :cond_0
    monitor-enter p1

    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 252
    :try_start_1
    monitor-exit p1

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 253
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    .line 254
    .local v2, "ops":I
    and-int v4, v2, p2

    if-ne v4, p2, :cond_3

    move v4, v0

    :goto_1
    if-eq p3, v4, :cond_4

    .line 255
    .local v0, "changed":Z
    :goto_2
    if-eqz v0, :cond_2

    .line 256
    if-eqz p3, :cond_5

    or-int v3, v2, p2

    :goto_3
    invoke-virtual {p1, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 257
    invoke-direct {p0}, Lcom/laiwang/protocol/android/q;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .end local v0    # "changed":Z
    .end local v2    # "ops":I
    :cond_2
    :goto_4
    :try_start_3
    monitor-exit p1

    goto :goto_0

    .restart local v2    # "ops":I
    :cond_3
    move v4, v3

    .line 254
    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    .line 256
    .restart local v0    # "changed":Z
    :cond_5
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v2

    goto :goto_3

    .line 259
    .end local v0    # "changed":Z
    .end local v2    # "ops":I
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[tcp] nio interestOps err"

    invoke-static {v3, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public b(Lcom/laiwang/protocol/android/r;)Ljava/nio/channels/SelectionKey;
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/r;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/laiwang/protocol/android/r;->g()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 62
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[tcp] nio reg selector "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/laiwang/protocol/android/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/laiwang/protocol/android/q;->b()Ljava/nio/channels/Selector;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->c:Lcom/laiwang/protocol/android/bu;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/laiwang/protocol/android/q;->c:Lcom/laiwang/protocol/android/bu;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bu;->d()V

    .line 239
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 240
    return-void
.end method
