.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;
.super Lipd;
.source "CompressImagePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "photoPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 167
    .local v1, "ret":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "success"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :try_start_0
    const-string/jumbo v2, "apFilePaths"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v2, "filePaths"

    invoke-static {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;Liny;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 33
    .line 2179
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;->a(Ljava/util/List;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2180
    const-string/jumbo v1, "scene"

    const-string/jumbo v2, "assets"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 33
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    .line 1121
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 45
    .local v13, "params":Lcom/alibaba/fastjson/JSONObject;
    if-nez v13, :cond_0

    .line 46
    const/4 v1, 0x1

    const-string/jumbo v2, "params is null"

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v4

    .line 50
    .local v4, "manager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    const/4 v10, 0x0

    .line 52
    .local v10, "imagesOri":Lcom/alibaba/fastjson/JSONArray;
    :try_start_0
    const-string/jumbo v1, "filePaths"

    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 53
    if-nez v10, :cond_1

    .line 54
    const-string/jumbo v1, "apFilePaths"

    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 61
    :cond_1
    :goto_1
    move-object v3, v10

    .local v3, "images":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 62
    :cond_2
    const/16 v1, 0xb

    const-string/jumbo v2, "no image selected"

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v2}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v3    # "images":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v9

    .line 57
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "images":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x4

    .line 68
    .local v12, "levelTmp":I
    :try_start_1
    const-string/jumbo v1, "compressLevel"

    invoke-virtual {v13, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 72
    :goto_2
    const/4 v1, 0x4

    if-ne v12, v1, :cond_4

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v8

    .line 74
    .local v8, "ctx":Landroid/content/Context;
    invoke-static {v8}, Lcms;->k(Landroid/content/Context;)Z

    move-result v11

    .line 75
    .local v11, "isWifi":Z
    if-eqz v11, :cond_7

    .line 76
    const/4 v12, 0x3

    .line 81
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v11    # "isWifi":Z
    :cond_4
    :goto_3
    const/4 v1, 0x3

    if-le v12, v1, :cond_5

    .line 82
    const/4 v12, 0x3

    .line 84
    :cond_5
    if-gez v12, :cond_6

    .line 85
    const/4 v12, 0x0

    .line 88
    :cond_6
    move v5, v12

    .line 89
    .local v5, "level":I
    const-string/jumbo v1, "CompressImagePlugin"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v15

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;ILjava/util/List;Liny;)V

    invoke-interface {v15, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 69
    .end local v5    # "level":I
    :catch_1
    move-exception v14

    .line 70
    .local v14, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 78
    .end local v14    # "throwable":Ljava/lang/Throwable;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v11    # "isWifi":Z
    :cond_7
    const/4 v12, 0x1

    goto :goto_3
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 2081
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 145
    instance-of v3, v3, Liop;

    if-nez v3, :cond_0

    .line 146
    const-string/jumbo v3, "CompressImagePlugin"

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "not from h5 page."

    aput-object v5, v4, v2

    .line 2098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 2159
    :goto_0
    return v1

    .line 150
    :cond_0
    const-string/jumbo v3, "CompressImagePlugin"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActionCalled:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2157
    const-string/jumbo v3, "compressImage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2158
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/CompressImagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 153
    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 4
    .param p1, "filter"    # Liof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 135
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "compressImage"

    aput-object v2, v1, v3

    .local v1, "actions":[Ljava/lang/String;
    move v2, v3

    .line 136
    :goto_0
    if-gtz v2, :cond_0

    aget-object v0, v1, v3

    .line 137
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    return-void
.end method
