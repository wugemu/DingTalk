.class abstract Lcom/amap/api/mapcore/util/gp;
.super Ljava/lang/ClassLoader;
.source "BaseClassLoader.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected c:Ldalvik/system/DexFile;

.field volatile d:Z

.field protected e:Lcom/amap/api/mapcore/util/fm;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Z)V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gp;->b:Ljava/util/Map;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gp;->c:Ldalvik/system/DexFile;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/gp;->d:Z

    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gp;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/amap/api/mapcore/util/gp;->e:Lcom/amap/api/mapcore/util/fm;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gp;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/gp;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gp;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gp;->c:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gp;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 53
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v1, "BaseClassLoader"

    const-string/jumbo v2, "releaseDexFile()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
