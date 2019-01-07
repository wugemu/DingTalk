.class Lcom/amap/api/services/a/aq$1;
.super Ljava/lang/Thread;
.source "PoiSearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/aq;->searchPOIAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/aq;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/aq;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 218
    const/4 v0, 0x6

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 219
    const/16 v0, 0x258

    iput v0, v2, Landroid/os/Message;->what:I

    .line 220
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 221
    const/4 v1, 0x0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-virtual {v0}, Lcom/amap/api/services/a/aq;->searchPOI()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v1

    .line 224
    const-string/jumbo v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    new-instance v0, Lcom/amap/api/services/a/q$h;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$h;-><init>()V

    .line 230
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v4}, Lcom/amap/api/services/a/aq;->b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 231
    iput-object v1, v0, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    .line 232
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_1
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    new-instance v0, Lcom/amap/api/services/a/q$h;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$h;-><init>()V

    .line 230
    iget-object v4, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v4}, Lcom/amap/api/services/a/aq;->b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 231
    iput-object v1, v0, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    .line 232
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v0}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    new-instance v4, Lcom/amap/api/services/a/q$h;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$h;-><init>()V

    .line 230
    iget-object v5, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v5}, Lcom/amap/api/services/a/aq;->b(Lcom/amap/api/services/a/aq;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 231
    iput-object v1, v4, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    .line 232
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 234
    iget-object v1, p0, Lcom/amap/api/services/a/aq$1;->a:Lcom/amap/api/services/a/aq;

    invoke-static {v1}, Lcom/amap/api/services/a/aq;->a(Lcom/amap/api/services/a/aq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    throw v0
.end method
