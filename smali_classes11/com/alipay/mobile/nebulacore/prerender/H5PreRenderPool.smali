.class public Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
.super Ljava/lang/Object;
.source "H5PreRenderPool.java"


# static fields
.field public static final CONTAINSMODE_CONTENT:I = 0x0

.field public static final CONTAINSMODE_CONTENT_URL:I = 0x2

.field public static final CONTAINSMODE_POINT:I = 0x1

.field private static instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;


# instance fields
.field private isIntercept:Z

.field private preFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private preHandler:Landroid/os/Handler;

.field private preParamContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private preParamPointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private preRunnable:Ljava/lang/Runnable;

.field private preUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    .line 25
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 87
    .local v1, "anchorIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public containsPoolKey(Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "key"    # Landroid/os/Bundle;
    .param p2, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 68
    packed-switch p2, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "result":Z
    :goto_0
    return v0

    .line 70
    .end local v0    # "result":Z
    :pswitch_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    .restart local v0    # "result":Z
    :goto_1
    goto :goto_0

    .end local v0    # "result":Z
    :cond_0
    move v0, v2

    .line 70
    goto :goto_1

    .line 73
    :pswitch_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    .restart local v0    # "result":Z
    :goto_2
    goto :goto_0

    .end local v0    # "result":Z
    :cond_1
    move v0, v2

    .line 73
    goto :goto_2

    .line 76
    :pswitch_2
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    .restart local v0    # "result":Z
    :goto_3
    goto :goto_0

    .end local v0    # "result":Z
    :cond_2
    move v0, v2

    .line 77
    goto :goto_3

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentIndex(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)I
    .locals 1
    .param p1, "h5Fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPreFragment(Landroid/os/Bundle;I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 8
    .param p1, "key"    # Landroid/os/Bundle;
    .param p2, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 123
    packed-switch p2, :pswitch_data_0

    .line 138
    const/4 v3, 0x0

    .line 140
    .local v3, "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :goto_0
    return-object v3

    .line 125
    .end local v3    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :pswitch_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 126
    .local v0, "index":I
    :goto_1
    if-eq v0, v6, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-object v3, v5

    .line 127
    .restart local v3    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_0
    goto :goto_0

    .end local v0    # "index":I
    .end local v3    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_1
    move v0, v6

    .line 125
    goto :goto_1

    .line 129
    :pswitch_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    .local v1, "index2":I
    :goto_2
    if-eq v1, v6, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-object v3, v5

    .line 131
    .restart local v3    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_2
    goto :goto_0

    .end local v1    # "index2":I
    .end local v3    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_3
    move v1, v6

    .line 129
    goto :goto_2

    .line 133
    :pswitch_2
    const-string/jumbo v5, "url"

    invoke-static {p1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 135
    .local v2, "index3":I
    :goto_3
    if-eq v2, v6, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-object v3, v5

    .line 136
    .restart local v3    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_4
    goto :goto_0

    .end local v2    # "index3":I
    .end local v3    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_5
    move v2, v6

    .line 134
    goto :goto_3

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPreFragmentCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreFragmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    return-object v0
.end method

.method public getPreHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreParamContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    return-object v0
.end method

.method public getPreParamPointMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPreRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPreUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getUrls()Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 58
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public isIntercept()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->isIntercept:Z

    return v0
.end method

.method public putPreFragment(Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "h5Fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    return-void
.end method

.method public putPreFragmentBundle(Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    :cond_3
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preHandler:Landroid/os/Handler;

    .line 221
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preRunnable:Ljava/lang/Runnable;

    .line 222
    return-void
.end method

.method public removeFragment(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "key"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 145
    .local v1, "indexObj":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 147
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamPointMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 150
    .local v2, "size":I
    if-ltz v0, :cond_1

    if-ge v0, v2, :cond_1

    .line 151
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preParamContentList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 154
    if-ltz v0, :cond_2

    if-ge v0, v2, :cond_2

    .line 155
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preFragmentList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 158
    if-ltz v0, :cond_3

    if-ge v0, v2, :cond_3

    .line 159
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preUrlList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 161
    :cond_3
    return-void

    .line 145
    .end local v0    # "index":I
    .end local v2    # "size":I
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setIsIntercept(Z)V
    .locals 0
    .param p1, "isIntercept"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->isIntercept:Z

    .line 185
    return-void
.end method

.method public setPreHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "preHandler"    # Landroid/os/Handler;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preHandler:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method public setPreRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "preRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->preRunnable:Ljava/lang/Runnable;

    .line 201
    return-void
.end method
