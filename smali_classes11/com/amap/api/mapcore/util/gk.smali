.class public Lcom/amap/api/mapcore/util/gk;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/fz;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gk;->b:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gk;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/gk;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/fz;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fz;

    const-class v2, Lcom/amap/api/mapcore/util/gg;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/fy;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/mapcore/util/fz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 27
    const-string/jumbo v2, "UpdateLogDB"

    const-string/jumbo v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/gl;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gk;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/gk;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    .line 40
    :cond_0
    const-string/jumbo v0, "1=1"

    .line 41
    iget-object v2, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    const-class v3, Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore/util/fz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 44
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v2, "UpdateLogDB"

    const-string/jumbo v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/gl;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gk;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/gk;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    .line 64
    :cond_1
    const-string/jumbo v0, "1=1"

    .line 65
    iget-object v1, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    const-class v2, Lcom/amap/api/mapcore/util/gl;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/mapcore/util/fz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    const-string/jumbo v1, "UpdateLogDB"

    const-string/jumbo v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/gk;->a:Lcom/amap/api/mapcore/util/fz;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/mapcore/util/fz;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
