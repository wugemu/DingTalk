.class Lcom/amap/api/services/a/ar$1;
.super Ljava/lang/Thread;
.source "RoutePOISearchCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ar;->searchRoutePOIAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/ar;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ar;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

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
    .line 43
    iget-object v0, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 44
    const/16 v0, 0xe

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 45
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 46
    const/4 v1, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar;->searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    move-result-object v1

    .line 49
    const-string/jumbo v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    new-instance v0, Lcom/amap/api/services/a/q$j;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 54
    iget-object v4, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v4}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    .line 55
    iput-object v1, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    .line 56
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    new-instance v0, Lcom/amap/api/services/a/q$j;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 54
    iget-object v4, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v4}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    .line 55
    iput-object v1, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    .line 56
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    new-instance v4, Lcom/amap/api/services/a/q$j;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$j;-><init>()V

    .line 54
    iget-object v5, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v5}, Lcom/amap/api/services/a/ar;->b(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    .line 55
    iput-object v1, v4, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    .line 56
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    iget-object v1, p0, Lcom/amap/api/services/a/ar$1;->a:Lcom/amap/api/services/a/ar;

    invoke-static {v1}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    throw v0
.end method
