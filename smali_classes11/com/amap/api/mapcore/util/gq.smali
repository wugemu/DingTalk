.class public Lcom/amap/api/mapcore/util/gq;
.super Ljava/lang/Object;
.source "ClassLoaderFactory.java"


# static fields
.field private static final a:Lcom/amap/api/mapcore/util/gq;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/gp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/amap/api/mapcore/util/gq;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/gq;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/gq;->a:Lcom/amap/api/mapcore/util/gq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gq;->b:Ljava/util/Map;

    .line 18
    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/gq;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amap/api/mapcore/util/gq;->a:Lcom/amap/api/mapcore/util/gq;

    return-object v0
.end method

.method private a(Lcom/amap/api/mapcore/util/fm;)Z
    .locals 1

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Lcom/amap/api/mapcore/util/gp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/gq;->a(Lcom/amap/api/mapcore/util/fm;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "sdkInfo or context referance is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gq;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-nez v0, :cond_2

    .line 40
    :try_start_2
    new-instance v1, Lcom/amap/api/mapcore/util/gt;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Lcom/amap/api/mapcore/util/gt;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gq;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/gu;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Lcom/amap/api/mapcore/util/gu;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 49
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
