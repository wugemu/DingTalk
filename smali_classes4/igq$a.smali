.class final Ligq$a;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ligq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ligq;


# direct methods
.method private constructor <init>(Ligq;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Ligq$a;->a:Ligq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ligq;B)V
    .locals 0
    .param p1, "x0"    # Ligq;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Ligq$a;-><init>(Ligq;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 430
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "WebsocketWriteThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 432
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Ligq$a;->a:Ligq;

    invoke-static {v1}, Ligq;->a(Ligq;)Ligj;

    move-result-object v1

    iget-object v1, v1, Ligj;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 434
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ligq$a;->a:Ligq;

    invoke-static {v1}, Ligq;->b(Ligq;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 435
    iget-object v1, p0, Ligq$a;->a:Ligq;

    invoke-static {v1}, Ligq;->b(Ligq;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 438
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    iget-object v1, p0, Ligq$a;->a:Ligq;

    invoke-static {v1}, Ligq;->a(Ligq;)Ligj;

    move-result-object v1

    invoke-virtual {v1}, Ligj;->b()V

    .line 442
    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v1

    goto :goto_1
.end method
