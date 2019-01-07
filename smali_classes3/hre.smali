.class public final Lhre;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "DevToolsSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Lhrd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const/16 v0, 0x2f76

    const-class v1, Lhrd;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 10
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhrd;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lhrd;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 33
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 35
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    :cond_0
    const-string/jumbo v2, "WebConfig"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "DevToolsSyncHandler_Fail"

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "onTaskRemindArrived,list is empty "

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    .line 43
    .local v0, "debugWebViewModel":Lhrd;
    :try_start_0
    const-string/jumbo v2, "WebConfig"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "DevToolsSyncHandler_Result"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "debugWebViewOrder= "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 44
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 43
    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :goto_1
    if-eqz v0, :cond_1

    .line 54
    iget-object v2, v0, Lhrd;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1065
    :pswitch_0
    const-string/jumbo v2, "WEBVIEW_DEBUG_START_SWITCH_KEY"

    invoke-static {v2, v9}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1067
    :try_start_1
    const-string/jumbo v2, "WEBVIEW_DEBUG_INFO_KEY"

    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v2

    .line 1069
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1075
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string/jumbo v2, "WEBVIEW_DEBUG_START_SWITCH_KEY"

    invoke-static {v2, v8}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1077
    :try_start_2
    const-string/jumbo v2, "WEBVIEW_DEBUG_INFO_KEY"

    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1078
    :catch_2
    move-exception v2

    .line 1079
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
