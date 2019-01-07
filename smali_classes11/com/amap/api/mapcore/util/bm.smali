.class public Lcom/amap/api/mapcore/util/bm;
.super Ljava/lang/Object;
.source "OfflineDBOperation.java"


# static fields
.field private static volatile a:Lcom/amap/api/mapcore/util/bm;

.field private static b:Lcom/amap/api/mapcore/util/fz;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bm;->c:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bm;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/bm;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/fz;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/bm;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->a:Lcom/amap/api/mapcore/util/bm;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/amap/api/mapcore/util/bm;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->a:Lcom/amap/api/mapcore/util/bm;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/amap/api/mapcore/util/bm;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/bm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/util/bm;->a:Lcom/amap/api/mapcore/util/bm;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->a:Lcom/amap/api/mapcore/util/bm;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/bj;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/bj;

    .line 257
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 138
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    const-class v2, Lcom/amap/api/mapcore/util/bj;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/fz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 142
    sget-object v1, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    const-class v2, Lcom/amap/api/mapcore/util/bj;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 144
    :cond_0
    const-string/jumbo v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 147
    new-instance v5, Lcom/amap/api/mapcore/util/bj;

    invoke-direct {v5, p1, v4}, Lcom/amap/api/mapcore/util/bj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/util/List;)V

    .line 154
    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/fz;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fz;

    invoke-static {}, Lcom/amap/api/mapcore/util/bl;->a()Lcom/amap/api/mapcore/util/bl;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/fz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string/jumbo v2, "OfflineDB"

    const-string/jumbo v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bm;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/bm;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/fz;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    .line 53
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/bh;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 87
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 90
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    const-class v3, Lcom/amap/api/mapcore/util/bh;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/fz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/bh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/bh;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 76
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string/jumbo v0, ""

    .line 70
    sget-object v2, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    const-class v3, Lcom/amap/api/mapcore/util/bh;

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore/util/fz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/bh;

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 76
    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore/util/bh;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bh;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bh;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {v1, p1, v0}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bh;->b()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore/util/bm;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;IJJJ)V
    .locals 9

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x5

    new-array v6, v0, [J

    const/4 v0, 0x0

    aput-wide p5, v6, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    const/4 v0, 0x4

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v0

    .line 326
    const/4 v0, 0x5

    new-array v7, v0, [J

    const/4 v0, 0x0

    aput-wide p7, v7, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    const/4 v0, 0x4

    const-wide/16 v2, 0x0

    aput-wide v2, v7, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 327
    invoke-virtual/range {v1 .. v7}, Lcom/amap/api/mapcore/util/bm;->a(Ljava/lang/String;IJ[J[J)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;IJ[J[J)V
    .locals 11

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :goto_0
    monitor-exit p0

    return-void

    .line 358
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore/util/bi;

    const/4 v0, 0x0

    aget-wide v6, p5, v0

    const/4 v0, 0x0

    aget-wide v8, p6, v0

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/mapcore/util/bi;-><init>(Ljava/lang/String;JIJJ)V

    .line 362
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    sget-object v2, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :goto_0
    monitor-exit p0

    return-object v0

    .line 200
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    sget-object v2, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    const-class v3, Lcom/amap/api/mapcore/util/bj;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/fz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore/util/bh;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/bk;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 303
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/bj;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 305
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/bh;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/bk;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/bk;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 286
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/bj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/bj;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 288
    sget-object v0, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/bi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 426
    monitor-enter p0

    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bm;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 431
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    sget-object v2, Lcom/amap/api/mapcore/util/bm;->b:Lcom/amap/api/mapcore/util/fz;

    const-class v3, Lcom/amap/api/mapcore/util/bk;

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore/util/fz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 433
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 434
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bk;->e()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
