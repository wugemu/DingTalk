.class public Lcom/amap/api/mapcore/util/hh;
.super Lcom/amap/api/mapcore/util/hc;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/hh$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore/util/hh;


# instance fields
.field private b:Lcom/amap/api/mapcore/util/hq;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ZI)V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/hc;-><init>()V

    .line 104
    if-eqz p1, :cond_0

    .line 106
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/hq;->a(I)Lcom/amap/api/mapcore/util/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/hh;->b:Lcom/amap/api/mapcore/util/hq;

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Lcom/amap/api/mapcore/util/hh$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/hh$a;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/hh$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/hh;->c:Landroid/os/Handler;

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/hh$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/hh$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/hh;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    const-string/jumbo v1, "NetManger"

    const-string/jumbo v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Z)Lcom/amap/api/mapcore/util/hh;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/hh;->a(ZI)Lcom/amap/api/mapcore/util/hh;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/mapcore/util/hh;
    .locals 3

    .prologue
    .line 75
    const-class v1, Lcom/amap/api/mapcore/util/hh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/hh;->a:Lcom/amap/api/mapcore/util/hh;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/amap/api/mapcore/util/hh;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/hh;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/mapcore/util/hh;->a:Lcom/amap/api/mapcore/util/hh;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/hh;->a:Lcom/amap/api/mapcore/util/hh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :cond_1
    if-eqz p0, :cond_0

    :try_start_2
    sget-object v0, Lcom/amap/api/mapcore/util/hh;->a:Lcom/amap/api/mapcore/util/hh;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/hh;->b:Lcom/amap/api/mapcore/util/hq;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/amap/api/mapcore/util/hh;->a:Lcom/amap/api/mapcore/util/hh;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/hq;->a(I)Lcom/amap/api/mapcore/util/hq;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/hh;->b:Lcom/amap/api/mapcore/util/hq;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/amap/api/mapcore/util/fc;Lcom/amap/api/mapcore/util/hj;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 411
    new-instance v0, Lcom/amap/api/mapcore/util/hl;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/hl;-><init>()V

    .line 412
    iput-object p1, v0, Lcom/amap/api/mapcore/util/hl;->a:Lcom/amap/api/mapcore/util/fc;

    .line 413
    iput-object p2, v0, Lcom/amap/api/mapcore/util/hl;->b:Lcom/amap/api/mapcore/util/hj;

    .line 414
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 415
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 417
    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/hh;Lcom/amap/api/mapcore/util/fc;Lcom/amap/api/mapcore/util/hj;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/hh;->a(Lcom/amap/api/mapcore/util/fc;Lcom/amap/api/mapcore/util/hj;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/hh;Lcom/amap/api/mapcore/util/hk;Lcom/amap/api/mapcore/util/hj;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/hh;->a(Lcom/amap/api/mapcore/util/hk;Lcom/amap/api/mapcore/util/hj;)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore/util/hk;Lcom/amap/api/mapcore/util/hj;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    iget-object v0, p1, Lcom/amap/api/mapcore/util/hk;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/amap/api/mapcore/util/hk;->a:[B

    invoke-interface {p2, v0, v1}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/util/Map;[B)V

    .line 423
    new-instance v0, Lcom/amap/api/mapcore/util/hl;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/hl;-><init>()V

    .line 424
    iput-object p2, v0, Lcom/amap/api/mapcore/util/hl;->b:Lcom/amap/api/mapcore/util/hj;

    .line 425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 426
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 428
    iget-object v0, p0, Lcom/amap/api/mapcore/util/hh;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    return-void
.end method


# virtual methods
.method public b(Lcom/amap/api/mapcore/util/hi;Z)Lcom/amap/api/mapcore/util/hk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fc;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/hh;->c(Lcom/amap/api/mapcore/util/hi;)V

    .line 348
    iget-object v0, p1, Lcom/amap/api/mapcore/util/hi;->h:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 353
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore/util/hf;

    iget v2, p1, Lcom/amap/api/mapcore/util/hi;->f:I

    iget v3, p1, Lcom/amap/api/mapcore/util/hi;->g:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore/util/hf;-><init>(IILjava/net/Proxy;Z)V

    .line 356
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/hi;->c()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/hi;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/hi;->b()Ljava/util/Map;

    move-result-object v3

    .line 356
    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore/util/hf;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/mapcore/util/hk;

    move-result-object v0

    .line 365
    return-object v0

    .line 351
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore/util/hi;->h:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    throw v0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fc;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/amap/api/mapcore/util/hi;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fc;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/hh;->a(Lcom/amap/api/mapcore/util/hi;Z)Lcom/amap/api/mapcore/util/hk;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    iget-object v0, v0, Lcom/amap/api/mapcore/util/hk;->a:[B

    .line 284
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    throw v0

    .line 276
    :catch_1
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    invoke-static {}, Lcom/amap/api/mapcore/util/ft;->a()Lcom/amap/api/mapcore/util/ft;

    move-result-object v1

    const-string/jumbo v2, "NetManager"

    const-string/jumbo v3, "makeSyncPostRequest"

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/amap/api/mapcore/util/hi;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fc;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/hh;->b(Lcom/amap/api/mapcore/util/hi;Z)Lcom/amap/api/mapcore/util/hk;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    iget-object v0, v0, Lcom/amap/api/mapcore/util/hk;->a:[B

    .line 307
    :goto_0
    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    throw v0

    .line 302
    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
