.class Lcom/amap/api/services/a/at$6;
.super Ljava/lang/Thread;
.source "ShareSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/at;->searchLocationShareUrlAsyn(Lcom/amap/api/services/core/LatLonSharePoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/core/LatLonSharePoint;

.field final synthetic b:Lcom/amap/api/services/a/at;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/at;Lcom/amap/api/services/core/LatLonSharePoint;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/amap/api/services/a/at$6;->b:Lcom/amap/api/services/a/at;

    iput-object p2, p0, Lcom/amap/api/services/a/at$6;->a:Lcom/amap/api/services/core/LatLonSharePoint;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 372
    iget-object v0, p0, Lcom/amap/api/services/a/at$6;->b:Lcom/amap/api/services/a/at;

    invoke-static {v0}, Lcom/amap/api/services/a/at;->a(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 376
    const/16 v0, 0xb

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 377
    const/16 v0, 0x44d

    iput v0, v1, Landroid/os/Message;->what:I

    .line 378
    iget-object v0, p0, Lcom/amap/api/services/a/at$6;->b:Lcom/amap/api/services/a/at;

    invoke-static {v0}, Lcom/amap/api/services/a/at;->a(Lcom/amap/api/services/a/at;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/at$6;->b:Lcom/amap/api/services/a/at;

    iget-object v2, p0, Lcom/amap/api/services/a/at$6;->a:Lcom/amap/api/services/core/LatLonSharePoint;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/at;->searchLocationShareUrl(Lcom/amap/api/services/core/LatLonSharePoint;)Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 382
    const-string/jumbo v3, "shareurlkey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 384
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
