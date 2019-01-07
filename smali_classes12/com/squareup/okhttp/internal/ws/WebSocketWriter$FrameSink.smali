.class final Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field private isFirstFrame:Z

.field private payloadType:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketWriter;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/ws/WebSocketWriter$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)V

    return-void
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
    .param p1, "x1"    # Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->payloadType:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    return-object p1
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;
    .param p1, "x1"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return p1
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v1

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x80

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 281
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$600(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x80

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 283
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$800(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Ljava/util/Random;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 284
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$700(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$902(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Z)Z

    .line 292
    return-void

    .line 286
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$400(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v1

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 265
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$500(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 256
    iget-object v1, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/squareup/okhttp/internal/ws/WebSocketWriter;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->payloadType:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v7}, Lcom/squareup/okhttp/internal/ws/WebSocketWriter;->access$300(Lcom/squareup/okhttp/internal/ws/WebSocketWriter;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lokio/Buffer;JZZ)V

    .line 257
    iput-boolean v7, p0, Lcom/squareup/okhttp/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 258
    return-void
.end method
