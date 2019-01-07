.class Lcom/amap/api/mapcore/util/ax$b;
.super Landroid/os/Handler;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ax;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/ax;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ax$b;->a:Lcom/amap/api/mapcore/util/ax;

    .line 862
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 863
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 870
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 871
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 872
    instance-of v1, v0, Lcom/amap/api/mapcore/util/aw;

    if-eqz v1, :cond_1

    .line 873
    check-cast v0, Lcom/amap/api/mapcore/util/aw;

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OfflineMapHandler handleMessage CitObj  name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->getcompleteCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/bu;->a(Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$b;->a:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$b;->a:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/ax$a;->a(Lcom/amap/api/mapcore/util/aw;)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const-string/jumbo v0, "Do not callback by CityObject! "

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bu;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
