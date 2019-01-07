.class public Lcom/amap/api/mapcore/util/fv;
.super Lcom/amap/api/mapcore/util/fx;
.source "CrashLogProcessor.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/fv;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fx;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/fn;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/amap/api/mapcore/util/fj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/fm;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    sget-boolean v2, Lcom/amap/api/mapcore/util/fv;->a:Z

    if-eqz v2, :cond_2

    .line 34
    sput-boolean v1, Lcom/amap/api/mapcore/util/fv;->a:Z

    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2

    .line 36
    :try_start_0
    new-instance v3, Lcom/amap/api/mapcore/util/gk;

    invoke-direct {v3, p1}, Lcom/amap/api/mapcore/util/gk;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/gk;->a()Lcom/amap/api/mapcore/util/gl;

    move-result-object v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    monitor-exit v2

    .line 54
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/gl;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/amap/api/mapcore/util/gl;->a(Z)V

    .line 46
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/gk;->a(Lcom/amap/api/mapcore/util/gl;)V

    .line 48
    monitor-exit v2

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 50
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 54
    goto :goto_0
.end method
