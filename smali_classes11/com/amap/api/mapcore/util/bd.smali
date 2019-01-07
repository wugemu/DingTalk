.class public Lcom/amap/api/mapcore/util/bd;
.super Ljava/lang/Object;
.source "OfflineMapRemoveTask.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bd;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/en;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "vmap/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    invoke-static {v2}, Lcom/amap/api/mapcore/util/bu;->b(Ljava/io/File;)Z

    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 77
    const-string/jumbo v1, "deleteDownload delete some thing wrong!"

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bu;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "vmap/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bu;->b(Ljava/lang/String;)V

    .line 92
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/bu;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :catch_2
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 97
    :catch_3
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/mapcore/util/aw;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/aw;->getPinyin()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bd;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/amap/api/mapcore/util/bd;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/aw;->i()V

    .line 49
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/aw;->h()V

    move v0, v1

    .line 45
    goto :goto_0

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/aw;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/bd;->b(Lcom/amap/api/mapcore/util/aw;)Z

    .line 32
    return-void
.end method
