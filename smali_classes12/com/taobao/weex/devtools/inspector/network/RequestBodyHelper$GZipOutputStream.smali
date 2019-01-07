.class Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;
.super Ljava/io/FilterOutputStream;
.source "RequestBodyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GZipOutputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;
    }
.end annotation


# static fields
.field private static final sExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mCopyFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "copyFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->mCopyFuture:Ljava/util/concurrent/Future;

    .line 150
    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 0
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "n":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public static create(Ljava/io/OutputStream;)Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;
    .locals 5
    .param p0, "finalOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1}, Ljava/io/PipedInputStream;-><init>()V

    .line 139
    .local v1, "pipeIn":Ljava/io/PipedInputStream;
    new-instance v2, Ljava/io/PipedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 141
    .local v2, "pipeOut":Ljava/io/PipedOutputStream;
    sget-object v3, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;

    invoke-direct {v4, v1, p0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 144
    .local v0, "copyFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    new-instance v3, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;

    invoke-direct {v3, v2, v0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/concurrent/Future;)V

    return-object v3
.end method

.method private static getAndRethrow(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 177
    .local v0, "cause":Ljava/lang/Throwable;
    const-class v2, Ljava/io/IOException;

    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 178
    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 179
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 215
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TT;>;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    throw p0

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->mCopyFuture:Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->getAndRethrow(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 160
    :try_start_2
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->mCopyFuture:Ljava/util/concurrent/Future;

    invoke-static {v2}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->getAndRethrow(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    :goto_0
    throw v1

    :catch_1
    move-exception v2

    goto :goto_0
.end method
