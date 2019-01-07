.class Lcom/amap/api/maps/AMapUtils$a;
.super Ljava/lang/Thread;
.source "AMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/AMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 362
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/maps/AMapUtils$a;->a:Ljava/lang/String;

    .line 366
    iput-object p1, p0, Lcom/amap/api/maps/AMapUtils$a;->a:Ljava/lang/String;

    .line 367
    if-eqz p2, :cond_0

    .line 368
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/AMapUtils$a;->b:Landroid/content/Context;

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amap/api/maps/AMapUtils$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fm$a;

    iget-object v1, p0, Lcom/amap/api/maps/AMapUtils$a;->a:Ljava/lang/String;

    const-string/jumbo v2, "4.1.3"

    sget-object v3, Lcom/amap/api/mapcore/util/g;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/fm$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.amap.api.maps"

    aput-object v3, v1, v2

    .line 378
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fm$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fm$a;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fm$a;->a()Lcom/amap/api/mapcore/util/fm;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/amap/api/maps/AMapUtils$a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/ff;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Z

    .line 381
    invoke-virtual {p0}, Lcom/amap/api/maps/AMapUtils$a;->interrupt()V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fc; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fc;->printStackTrace()V

    goto :goto_0
.end method
