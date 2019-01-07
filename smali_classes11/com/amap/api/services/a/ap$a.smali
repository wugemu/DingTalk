.class Lcom/amap/api/services/a/ap$a;
.super Ljava/util/TimerTask;
.source "NearbySearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/ap;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/ap;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/amap/api/services/a/ap$a;->a:Lcom/amap/api/services/a/ap;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/a/ap$1;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ap$a;-><init>(Lcom/amap/api/services/a/ap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ap$a;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v0}, Lcom/amap/api/services/a/ap;->d(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/amap/api/services/a/ap$a;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v0}, Lcom/amap/api/services/a/ap;->d(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Lcom/amap/api/services/nearby/UploadInfoCallback;->OnUploadInfoCallback()Lcom/amap/api/services/nearby/UploadInfo;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/amap/api/services/a/ap$a;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v1, v0}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/amap/api/services/a/ap$a;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v1}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/a/q;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 398
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 399
    iget-object v2, p0, Lcom/amap/api/services/a/ap$a;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v2}, Lcom/amap/api/services/a/ap;->b(Lcom/amap/api/services/a/ap;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 400
    iput v0, v1, Landroid/os/Message;->what:I

    .line 401
    iget-object v0, p0, Lcom/amap/api/services/a/ap$a;->a:Lcom/amap/api/services/a/ap;

    invoke-static {v0}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    const-string/jumbo v1, "NearbySearch"

    const-string/jumbo v2, "UpdateDataTask"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
