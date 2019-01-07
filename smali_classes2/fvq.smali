.class public final Lfvq;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "QrScanWebViewPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Lfpz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const/16 v0, 0x3e81

    const-class v1, Lfpz;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 9
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfpz;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lfpz;>;"
    const/4 v8, 0x0

    .line 39
    if-eqz p1, :cond_3

    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, "success":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpz;

    .line 42
    .local v0, "content":Lfpz;
    if-eqz v0, :cond_0

    iget-object v6, v0, Lfpz;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 45
    const/4 v4, 0x1

    .line 46
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "web_view_qr_scan_push_event"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "info"

    iget-object v7, v0, Lfpz;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    const-string/jumbo v6, "web_view_qr_scan_json_string"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v0    # "content":Lfpz;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    if-eqz v4, :cond_2

    .line 57
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 66
    .end local v4    # "success":Z
    :goto_2
    return-void

    .line 59
    .restart local v4    # "success":Z
    :cond_2
    const-string/jumbo v5, "QrScanWebViewPushHandler"

    const-string/jumbo v6, "data is empty."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const-string/jumbo v5, "data is empty."

    invoke-virtual {p2, v5}, Lcom/alibaba/wukong/sync/SyncAck;->failed(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    .end local v4    # "success":Z
    :cond_3
    const-string/jumbo v5, "QrScanWebViewPushHandler"

    const-string/jumbo v6, "data is empty."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const-string/jumbo v5, "data is empty."

    invoke-virtual {p2, v5}, Lcom/alibaba/wukong/sync/SyncAck;->failed(Ljava/lang/String;)V

    goto :goto_2
.end method
