.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WeexUserTrackAdapter;
.super Ljava/lang/Object;
.source "WeexUserTrackAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXUserTrackAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeexUserTrackAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "wxPerformance"    # Lcom/taobao/weex/common/WXPerformance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXPerformance;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string/jumbo v4, "initFramework"

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    if-eqz p5, :cond_0

    .line 29
    :try_start_0
    const-string/jumbo v4, "arg"

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v4, "errMsg"

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    .local v2, "errMsg":Ljava/lang/String;
    const-string/jumbo v4, "errCode"

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, "errCode":Ljava/lang/String;
    const-string/jumbo v4, "weex"

    invoke-static {v4, p3, v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v3

    .line 37
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "WeexUserTrackAdapter"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "fetch weex init data exception: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceData(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
