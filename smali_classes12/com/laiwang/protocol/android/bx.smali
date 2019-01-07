.class public Lcom/laiwang/protocol/android/bx;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Lcom/laiwang/protocol/ResetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bx$a;
    }
.end annotation


# static fields
.field private static g:Lcom/laiwang/protocol/android/bx;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/laiwang/protocol/android/bv;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bv;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:I

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;

.field private e:Landroid/os/Handler;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/laiwang/protocol/android/bx;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/bx;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/bx;->g:Lcom/laiwang/protocol/android/bx;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bx;->f:Ljava/util/Map;

    .line 58
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bx;->a:Ljava/util/concurrent/BlockingQueue;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/laiwang/protocol/android/bx;->c:I

    .line 60
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWP;->addLogoutListener(Lcom/laiwang/protocol/ResetListener;)V

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "uploadWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bx;->e:Landroid/os/Handler;

    .line 64
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    .line 65
    return-void
.end method

.method private a(Lcom/laiwang/protocol/android/bv;Z)I
    .locals 13
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;
    .param p2, "canCommit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 237
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->f()J

    move-result-wide v6

    .line 239
    .local v6, "uip":J
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->l()Lcom/laiwang/protocol/android/bv$a;

    move-result-object v1

    .line 240
    .local v1, "frag":Lcom/laiwang/protocol/android/bv$a;
    if-eqz v1, :cond_0

    iget-object v9, v1, Lcom/laiwang/protocol/android/bv$a;->b:[B

    if-nez v9, :cond_3

    .line 241
    :cond_0
    if-nez p2, :cond_1

    .line 242
    const-string/jumbo v9, "[upload] %s, stream upload wait next frag"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v8

    .line 293
    .end local v1    # "frag":Lcom/laiwang/protocol/android/bv$a;
    :goto_0
    return v4

    .line 245
    .restart local v1    # "frag":Lcom/laiwang/protocol/android/bv$a;
    :cond_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->n()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 247
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx;->k(Lcom/laiwang/protocol/android/bv;)V

    :goto_1
    move v4, v8

    .line 251
    goto :goto_0

    .line 249
    :cond_2
    const-string/jumbo v9, "[upload] %s, no available frag"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 285
    .end local v1    # "frag":Lcom/laiwang/protocol/android/bv$a;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[upload] "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", startUpload Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->c()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 288
    sget-object v9, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_READ_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {p1, v9}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    .line 292
    :goto_2
    iget-object v9, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v4, v8

    .line 293
    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "frag":Lcom/laiwang/protocol/android/bv$a;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->k()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 256
    const-string/jumbo v9, "/r/FileUpload/frag"

    invoke-static {v9}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v3

    .line 257
    .local v3, "request":Lcom/laiwang/protocol/core/Request;
    new-instance v2, Lcom/laiwang/protocol/android/cc;

    invoke-direct {v2}, Lcom/laiwang/protocol/android/cc;-><init>()V

    .line 258
    .local v2, "fragRequest":Lcom/laiwang/protocol/android/cc;
    iget v9, v1, Lcom/laiwang/protocol/android/bv$a;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v2, Lcom/laiwang/protocol/android/cc;->c:Ljava/lang/Integer;

    .line 259
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/laiwang/protocol/android/cc;->a:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->j()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/laiwang/protocol/android/cc;->b:Ljava/lang/String;

    .line 261
    iget-object v9, v1, Lcom/laiwang/protocol/android/bv$a;->b:[B

    iput-object v9, v2, Lcom/laiwang/protocol/android/cc;->d:[B

    .line 262
    const-string/jumbo v9, "dt"

    const-string/jumbo v10, "p"

    invoke-virtual {v3, v9, v10}, Lcom/laiwang/protocol/core/Request;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 263
    invoke-static {v2}, Lcom/laiwang/protocol/android/by;->a(Liyn;)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    .line 272
    .end local v2    # "fragRequest":Lcom/laiwang/protocol/android/cc;
    :goto_3
    iget-object v9, v1, Lcom/laiwang/protocol/android/bv$a;->b:[B

    array-length v4, v9

    .line 273
    .local v4, "size":I
    iget-boolean v9, p1, Lcom/laiwang/protocol/android/bv;->c:Z

    if-nez v9, :cond_4

    .line 274
    iget-object v9, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    :try_start_2
    iget v9, p0, Lcom/laiwang/protocol/android/bx;->c:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/laiwang/protocol/android/bx;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :try_start_3
    iget-object v9, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    :cond_4
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v9}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 282
    const-string/jumbo v9, "[upload] %s, upload sendFrag"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v9

    new-instance v10, Lcom/laiwang/protocol/android/bx$a;

    invoke-direct {v10, p0, v3, p1, v1}, Lcom/laiwang/protocol/android/bx$a;-><init>(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/bv;Lcom/laiwang/protocol/android/bv$a;)V

    invoke-direct {p0, v3, v9, v10, p1}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V

    goto/16 :goto_0

    .line 265
    .end local v3    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v4    # "size":I
    :cond_5
    const-string/jumbo v9, "/up/frag"

    invoke-static {v9}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v3

    .line 266
    .restart local v3    # "request":Lcom/laiwang/protocol/core/Request;
    iget v9, v1, Lcom/laiwang/protocol/android/bv$a;->a:I

    invoke-virtual {p0, p1, v9}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;I)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "upReqHead":Ljava/lang/String;
    const-string/jumbo v9, "up-req"

    invoke-virtual {v3, v9, v5}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 268
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_6

    const-string/jumbo v9, "uip"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 269
    :cond_6
    iget-object v9, v1, Lcom/laiwang/protocol/android/bv$a;->b:[B

    invoke-virtual {v3, v9}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    goto :goto_3

    .line 278
    .end local v5    # "upReqHead":Ljava/lang/String;
    .restart local v4    # "size":I
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 290
    .end local v1    # "frag":Lcom/laiwang/protocol/android/bv$a;
    .end local v3    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v4    # "size":I
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_7
    sget-object v9, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_NOT_FOUND:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    invoke-virtual {p1, v9}, Lcom/laiwang/protocol/android/bv;->a(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/laiwang/protocol/android/bx;->c:I

    return p1
.end method

.method public static a()Lcom/laiwang/protocol/android/bx;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/laiwang/protocol/android/bx;->g:Lcom/laiwang/protocol/android/bx;

    return-object v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx;->h(Lcom/laiwang/protocol/android/bv;)V

    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "x2"    # Lcom/laiwang/protocol/connection/LWPConnection;
    .param p3, "x3"    # Lcom/laiwang/protocol/android/bx$a;
    .param p4, "x4"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V

    return-void
.end method

.method private a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V
    .locals 2
    .param p1, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "connection"    # Lcom/laiwang/protocol/connection/LWPConnection;
    .param p3, "callback"    # Lcom/laiwang/protocol/android/bx$a;
    .param p4, "fileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 657
    invoke-virtual {p4}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    const-wide/32 v0, 0x2bf20

    invoke-virtual {p1, v0, v1}, Lcom/laiwang/protocol/core/Request;->setTimeout(J)V

    .line 661
    invoke-virtual {p2, p1, p3}, Lcom/laiwang/protocol/connection/LWPConnection;->send(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    goto :goto_0
.end method

.method private b()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v2, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 101
    .local v1, "normalFileSize":I
    iget-object v2, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/bv;

    .line 102
    .local v0, "item":Lcom/laiwang/protocol/android/bv;
    iget-boolean v3, v0, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 104
    .end local v0    # "item":Lcom/laiwang/protocol/android/bv;
    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/bx;)I
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;

    .prologue
    .line 41
    iget v0, p0, Lcom/laiwang/protocol/android/bx;->c:I

    return v0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)I
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx;->i(Lcom/laiwang/protocol/android/bv;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/bx;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx;->g(Lcom/laiwang/protocol/android/bv;)V

    return-void
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/bx;)I
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/laiwang/protocol/android/bx;->b()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx;->f(Lcom/laiwang/protocol/android/bv;)V

    return-void
.end method

.method static synthetic e(Lcom/laiwang/protocol/android/bx;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bx;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->a:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private f(Lcom/laiwang/protocol/android/bv;)V
    .locals 2
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->e:Landroid/os/Handler;

    new-instance v1, Lcom/laiwang/protocol/android/bx$2;

    invoke-direct {v1, p0, p1}, Lcom/laiwang/protocol/android/bx$2;-><init>(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method private g(Lcom/laiwang/protocol/android/bv;)V
    .locals 3
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    new-instance v0, Lcom/laiwang/protocol/android/bx$3;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/laiwang/protocol/android/bx$3;-><init>(Lcom/laiwang/protocol/android/bx;Ljava/lang/String;Lcom/laiwang/protocol/android/bv;)V

    .line 127
    .local v0, "observer":Landroid/os/FileObserver;
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 129
    return-void
.end method

.method private h(Lcom/laiwang/protocol/android/bv;)V
    .locals 17
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->f()J

    move-result-wide v10

    .line 157
    .local v10, "uip":J
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->k()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 158
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/laiwang/protocol/android/bv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_4

    .line 159
    const-string/jumbo v13, "/r/FileUpload/pre"

    invoke-static {v13}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v8

    .line 160
    .local v8, "request":Lcom/laiwang/protocol/core/Request;
    new-instance v7, Lcom/laiwang/protocol/android/ce;

    invoke-direct {v7}, Lcom/laiwang/protocol/android/ce;-><init>()V

    .line 161
    .local v7, "preRequest":Lcom/laiwang/protocol/android/ce;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->h()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/laiwang/protocol/android/ce;->a:Ljava/lang/String;

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->e()Lcom/laiwang/protocol/upload/MediaType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/laiwang/protocol/upload/MediaType;->getExt()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/laiwang/protocol/android/ce;->b:Ljava/lang/String;

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->z()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v7, Lcom/laiwang/protocol/android/ce;->h:Ljava/lang/Integer;

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->A()I

    move-result v13

    iput v13, v7, Lcom/laiwang/protocol/android/ce;->i:I

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->B()I

    move-result v13

    if-lez v13, :cond_2

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->B()I

    move-result v13

    iput v13, v7, Lcom/laiwang/protocol/android/ce;->j:I

    .line 168
    :cond_2
    invoke-static {v7}, Lcom/laiwang/protocol/android/by;->a(Liyn;)[B

    move-result-object v6

    .line 169
    .local v6, "payload":[B
    const-string/jumbo v13, "dt"

    const-string/jumbo v14, "p"

    invoke-virtual {v8, v13, v14}, Lcom/laiwang/protocol/core/Request;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 170
    invoke-virtual {v8, v6}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    .line 198
    .end local v6    # "payload":[B
    .end local v7    # "preRequest":Lcom/laiwang/protocol/android/ce;
    :cond_3
    :goto_1
    sget-object v13, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v8, v13}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 200
    new-instance v3, Lcom/laiwang/protocol/android/bv$a;

    invoke-direct {v3}, Lcom/laiwang/protocol/android/bv$a;-><init>()V

    .line 201
    .local v3, "frag":Lcom/laiwang/protocol/android/bv$a;
    const/4 v13, -0x1

    iput v13, v3, Lcom/laiwang/protocol/android/bv$a;->a:I

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/laiwang/protocol/android/bv;->l:J

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v13

    new-instance v14, Lcom/laiwang/protocol/android/bx$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v8, v1, v3}, Lcom/laiwang/protocol/android/bx$a;-><init>(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/bv;Lcom/laiwang/protocol/android/bv$a;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v13, v14, v1}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "frag":Lcom/laiwang/protocol/android/bv$a;
    .end local v8    # "request":Lcom/laiwang/protocol/core/Request;
    :cond_4
    const-string/jumbo v13, "[upload_ng] %s %s, upload from breakpoint, fixed frag size %d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->q()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 172
    invoke-static {v13, v14}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-direct/range {p0 .. p1}, Lcom/laiwang/protocol/android/bx;->i(Lcom/laiwang/protocol/android/bv;)I

    move-result v9

    .line 175
    .local v9, "sendSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->q()I

    move-result v13

    if-lez v13, :cond_0

    if-gtz v9, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/laiwang/protocol/android/bv;

    .line 177
    .local v4, "item":Lcom/laiwang/protocol/android/bv;
    invoke-virtual {v4}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/laiwang/protocol/android/bx;->i(Lcom/laiwang/protocol/android/bv;)I

    move-result v9

    .line 179
    if-lez v9, :cond_5

    goto/16 :goto_0

    .line 185
    .end local v4    # "item":Lcom/laiwang/protocol/android/bv;
    .end local v9    # "sendSize":I
    :cond_6
    const-string/jumbo v13, "/up/pre"

    invoke-static {v13}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v8

    .line 186
    .restart local v8    # "request":Lcom/laiwang/protocol/core/Request;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;I)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "upReqHead":Ljava/lang/String;
    const-string/jumbo v14, "up-req"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v16, ";"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/laiwang/protocol/android/bx;->d(Lcom/laiwang/protocol/android/bv;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v14, v13}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 188
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_7

    const-string/jumbo v13, "uip"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 190
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->h()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/laiwang/protocol/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 191
    new-instance v5, Lcom/laiwang/protocol/android/au;

    invoke-direct {v5}, Lcom/laiwang/protocol/android/au;-><init>()V

    .line 192
    .local v5, "model":Lcom/laiwang/protocol/android/au;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->h()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/laiwang/protocol/android/au;->a:Ljava/lang/String;

    .line 193
    invoke-static {v5}, Lcom/laiwang/protocol/android/by;->a(Liyn;)[B

    move-result-object v2

    .line 194
    .local v2, "bytes":[B
    const-string/jumbo v13, "dt"

    const-string/jumbo v14, "p"

    invoke-virtual {v8, v13, v14}, Lcom/laiwang/protocol/core/Request;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 195
    invoke-virtual {v8, v2}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    goto/16 :goto_1

    .line 187
    .end local v2    # "bytes":[B
    .end local v5    # "model":Lcom/laiwang/protocol/android/au;
    :cond_8
    const-string/jumbo v13, ""

    goto :goto_2
.end method

.method private i(Lcom/laiwang/protocol/android/bv;)I
    .locals 4
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    iget-object v2, p1, Lcom/laiwang/protocol/android/bv;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-boolean v2, p1, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v2, :cond_2

    .line 213
    iget-boolean v2, p1, Lcom/laiwang/protocol/android/bv;->g:Z

    invoke-direct {p0, p1, v2}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;Z)I

    move-result v1

    goto :goto_0

    .line 215
    :cond_2
    const/4 v1, 0x0

    .line 216
    .local v1, "total":I
    :goto_1
    iget v2, p0, Lcom/laiwang/protocol/android/bx;->c:I

    const/high16 v3, 0x100000

    if-ge v2, v3, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx;->j(Lcom/laiwang/protocol/android/bv;)I

    move-result v0

    .line 218
    .local v0, "size":I
    add-int/2addr v1, v0

    .line 219
    if-lez v0, :cond_0

    goto :goto_1
.end method

.method private j(Lcom/laiwang/protocol/android/bv;)I
    .locals 2
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 227
    :try_start_0
    iget v0, p0, Lcom/laiwang/protocol/android/bx;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 230
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private k(Lcom/laiwang/protocol/android/bv;)V
    .locals 17
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 298
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/laiwang/protocol/android/bv;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 299
    const-string/jumbo v13, "[upload] %s %s, commit"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->f()J

    move-result-wide v10

    .line 302
    .local v10, "uip":J
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->k()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 303
    const-string/jumbo v13, "/r/FileUpload/ci"

    invoke-static {v13}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v8

    .line 304
    .local v8, "request":Lcom/laiwang/protocol/core/Request;
    new-instance v3, Lcom/laiwang/protocol/android/bz;

    invoke-direct {v3}, Lcom/laiwang/protocol/android/bz;-><init>()V

    .line 305
    .local v3, "commitRequest":Lcom/laiwang/protocol/android/bz;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->h()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/laiwang/protocol/android/bz;->a:Ljava/lang/String;

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->j()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/laiwang/protocol/android/bz;->c:Ljava/lang/String;

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/laiwang/protocol/android/bz;->b:Ljava/lang/String;

    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->o()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v3, Lcom/laiwang/protocol/android/bz;->f:Ljava/lang/Integer;

    .line 309
    const-string/jumbo v13, "dt"

    const-string/jumbo v14, "p"

    invoke-virtual {v8, v13, v14}, Lcom/laiwang/protocol/core/Request;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 310
    invoke-static {v3}, Lcom/laiwang/protocol/android/by;->a(Liyn;)[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    .line 330
    .end local v3    # "commitRequest":Lcom/laiwang/protocol/android/bz;
    :cond_0
    :goto_0
    sget-object v13, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v8, v13}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 331
    new-instance v7, Lcom/laiwang/protocol/android/bv$a;

    invoke-direct {v7}, Lcom/laiwang/protocol/android/bv$a;-><init>()V

    .line 332
    .local v7, "frag":Lcom/laiwang/protocol/android/bv$a;
    const/4 v13, -0x1

    iput v13, v7, Lcom/laiwang/protocol/android/bv$a;->a:I

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->w()Lcom/laiwang/protocol/connection/LWPConnection;

    move-result-object v13

    new-instance v14, Lcom/laiwang/protocol/android/bx$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v8, v1, v7}, Lcom/laiwang/protocol/android/bx$a;-><init>(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/bv;Lcom/laiwang/protocol/android/bv$a;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v13, v14, v1}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/bx$a;Lcom/laiwang/protocol/android/bv;)V

    .line 337
    .end local v7    # "frag":Lcom/laiwang/protocol/android/bv$a;
    .end local v8    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v10    # "uip":J
    :goto_1
    return-void

    .line 312
    .restart local v10    # "uip":J
    :cond_1
    const-string/jumbo v13, "/up/ci"

    invoke-static {v13}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v8

    .line 313
    .restart local v8    # "request":Lcom/laiwang/protocol/core/Request;
    const/4 v13, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;I)Ljava/lang/String;

    move-result-object v9

    .line 314
    .local v9, "upReqHead":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/laiwang/protocol/android/bx;->l(Lcom/laiwang/protocol/android/bv;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "crc32":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/laiwang/protocol/android/bx;->c(Lcom/laiwang/protocol/android/bv;)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "flags":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v6, :cond_4

    const-string/jumbo v13, ""

    :goto_2
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/laiwang/protocol/android/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "ext":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 319
    const-string/jumbo v13, ";fext="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    const-string/jumbo v13, "up-req"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 322
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->z()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->A()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 323
    .local v12, "upver":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->B()I

    move-result v13

    if-lez v13, :cond_3

    .line 324
    const-string/jumbo v13, "up-expired-time"

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->B()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 326
    :cond_3
    const-string/jumbo v13, "up-ver"

    invoke-virtual {v8, v13, v12}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 327
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_0

    const-string/jumbo v13, "uip"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    goto/16 :goto_0

    .line 316
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "ext":Ljava/lang/String;
    .end local v12    # "upver":Ljava/lang/String;
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, ";"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 335
    .end local v4    # "crc32":Ljava/lang/String;
    .end local v6    # "flags":Ljava/lang/String;
    .end local v8    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v9    # "upReqHead":Ljava/lang/String;
    .end local v10    # "uip":J
    :cond_5
    const-string/jumbo v13, "[upload] %s %s, already committed"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private l(Lcom/laiwang/protocol/android/bv;)Ljava/lang/String;
    .locals 4
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "crc32="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/laiwang/protocol/android/bv;I)Ljava/lang/String;
    .locals 2
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;
    .param p2, "upIdx"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->e()Lcom/laiwang/protocol/upload/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/upload/MediaType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/laiwang/protocol/android/bv;)V
    .locals 8
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "[upload] %s %s, not add to sending, because canceled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->e:Landroid/os/Handler;

    new-instance v2, Lcom/laiwang/protocol/android/bx$1;

    invoke-direct {v2, p0, p1}, Lcom/laiwang/protocol/android/bx$1;-><init>(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    const-string/jumbo v1, "[upload] %s %s, add to stream upload"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/laiwang/protocol/android/bx;->b()I

    move-result v0

    .line 85
    .local v0, "normalFileSize":I
    if-lez v0, :cond_2

    iget v1, p0, Lcom/laiwang/protocol/android/bx;->c:I

    const/high16 v2, 0x100000

    if-ge v1, v2, :cond_3

    .line 86
    :cond_2
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bx;->f(Lcom/laiwang/protocol/android/bv;)V

    .line 87
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string/jumbo v1, "[upload] %s %s, add to upload"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 90
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/bx;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 91
    const-string/jumbo v1, "[upload] %s %s, add to pending queue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    .end local v0    # "normalFileSize":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/bx;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public b(Lcom/laiwang/protocol/android/bv;)V
    .locals 9
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 132
    iput-boolean v7, p1, Lcom/laiwang/protocol/android/bv;->g:Z

    .line 133
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->g()V

    .line 134
    iget-object v4, p0, Lcom/laiwang/protocol/android/bx;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileObserver;

    .line 135
    .local v2, "observer":Landroid/os/FileObserver;
    if-nez v2, :cond_1

    .line 136
    const-string/jumbo v4, "[upload] %s %s, commit stream but no file observer"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 140
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->a()J

    move-result-wide v0

    .line 141
    .local v0, "len":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 142
    const-string/jumbo v4, "[upload] %s %s, stream upload file len zero"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_2
    const-string/jumbo v4, "[upload] %s, stream upload commit, file len %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :goto_1
    invoke-direct {p0, p1, v7}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;Z)I

    move-result v3

    .line 148
    .local v3, "size":I
    if-lez v3, :cond_0

    goto :goto_1
.end method

.method c(Lcom/laiwang/protocol/android/bv;)Ljava/lang/String;
    .locals 4
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "flags":Ljava/lang/StringBuilder;
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v1, :cond_5

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "flags":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .restart local v0    # "flags":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->d:Z

    if-eqz v1, :cond_1

    .line 632
    const-string/jumbo v1, "hd&ori&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_1
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->e:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "mi&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_2
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->b:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "pri&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_3
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "stm&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_4
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bv;->f:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "w2j&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_5
    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method d(Lcom/laiwang/protocol/android/bv;)Ljava/lang/String;
    .locals 1
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    .prologue
    .line 643
    iget-boolean v0, p1, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v0, :cond_0

    .line 644
    const-string/jumbo v0, "flag=stm"

    .line 646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/laiwang/protocol/android/bv;)V
    .locals 6
    .param p1, "upFileItem"    # Lcom/laiwang/protocol/android/bv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 665
    iget-boolean v2, p1, Lcom/laiwang/protocol/android/bv;->c:Z

    if-eqz v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/laiwang/protocol/android/bx;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 667
    .local v0, "observer":Landroid/os/FileObserver;
    if-nez v0, :cond_1

    .line 682
    .end local v0    # "observer":Landroid/os/FileObserver;
    :cond_0
    :goto_0
    return-void

    .line 670
    .restart local v0    # "observer":Landroid/os/FileObserver;
    :cond_1
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 674
    .end local v0    # "observer":Landroid/os/FileObserver;
    :goto_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 675
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 677
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bx;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 678
    const-string/jumbo v2, "[upload] %s %s, remove from pending"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->p()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bv;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 672
    .end local v1    # "ret":Z
    :cond_2
    iput v3, p0, Lcom/laiwang/protocol/android/bx;->c:I

    goto :goto_1
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 341
    const-string/jumbo v0, "[upload] upload manager reset"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/laiwang/protocol/android/bx;->c:I

    .line 344
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    return-void
.end method
