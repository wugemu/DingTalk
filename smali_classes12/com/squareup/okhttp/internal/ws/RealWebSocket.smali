.class public abstract Lcom/squareup/okhttp/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lcom/squareup/okhttp/ws/WebSocket;


# static fields
.field private static final CLOSE_PROTOCOL_EXCEPTION:I = 0x3ea


# instance fields
.field private final closeLock:Ljava/lang/Object;

.field private final listener:Lcom/squareup/okhttp/ws/WebSocketListener;

.field private final reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

.field private volatile readerSentClose:Z

.field private final writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

.field private volatile writerSentClose:Z


# direct methods
.method public constructor <init>(ZLokio/BufferedSource;Lokio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "sink"    # Lokio/BufferedSink;
    .param p4, "random"    # Ljava/util/Random;
    .param p5, "replyExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Lcom/squareup/okhttp/ws/WebSocketListener;
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    .line 48
    iput-object p6, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    .line 50
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {v0, p1, p3, p4}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    .line 51
    new-instance v0, Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    new-instance v1, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;

    invoke-direct {v1, p0, p6, p5, p7}, Lcom/squareup/okhttp/internal/ws/RealWebSocket$1;-><init>(Lcom/squareup/okhttp/internal/ws/RealWebSocket;Lcom/squareup/okhttp/ws/WebSocketListener;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/ws/RealWebSocket;)Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/ws/RealWebSocket;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/RealWebSocket;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->peerClose(ILjava/lang/String;)V

    return-void
.end method

.method private peerClose(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 137
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 138
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    .line 141
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-nez v1, :cond_1

    .line 142
    .local v0, "writeCloseResponse":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v0, :cond_0

    .line 146
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    :goto_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v1, p1, p2}, Lcom/squareup/okhttp/ws/WebSocketListener;->onClose(ILjava/lang/String;)V

    .line 157
    return-void

    .line 141
    .end local v0    # "writeCloseResponse":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .restart local v0    # "writeCloseResponse":Z
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private readerErrorClose(Ljava/io/IOException;)V
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 162
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    .line 166
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-nez v1, :cond_1

    .line 167
    .local v0, "writeCloseResponse":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :goto_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->listener:Lcom/squareup/okhttp/ws/WebSocketListener;

    invoke-interface {v1, p1}, Lcom/squareup/okhttp/ws/WebSocketListener;->onFailure(Ljava/io/IOException;)V

    .line 185
    return-void

    .line 166
    .end local v0    # "writeCloseResponse":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .restart local v0    # "writeCloseResponse":Z
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    .line 124
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z

    .line 125
    .local v0, "closeConnection":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V

    .line 129
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->closeConnection()V

    .line 132
    :cond_1
    return-void

    .line 125
    .end local v0    # "closeConnection":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract closeConnection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public newMessageSink(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lokio/BufferedSink;
    .locals 2
    .param p1, "type"    # Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->newMessageSink(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public readMessage()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->reader:Lcom/squareup/okhttp/internal/ws/WebSocketReader;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketReader;->processNextFrame()V

    .line 88
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerSentClose:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->readerErrorClose(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lokio/Buffer;)V
    .locals 2
    .param p1, "type"    # Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    .param p2, "payload"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lokio/Buffer;)V

    .line 103
    return-void
.end method

.method public sendPing(Lokio/Buffer;)V
    .locals 2
    .param p1, "payload"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePing(Lokio/Buffer;)V

    .line 108
    return-void
.end method

.method public sendPong(Lokio/Buffer;)V
    .locals 2
    .param p1, "payload"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/RealWebSocket;->writer:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->writePong(Lokio/Buffer;)V

    .line 114
    return-void
.end method
