.class public Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;
.super Lipd;
.source "H5PreRenderPlugin.java"


# static fields
.field private static final DEFAULT_PRE_RANDER_MAX:I = 0x3

.field public static final KEY_PRE_RANDER_MAX:Ljava/lang/String; = "H5_preRenderMax"

.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final TAG:Ljava/lang/String; = "H5PreRenderPlugin"

.field private static final WINDOW_PARAMS:Ljava/lang/String; = "windowParams"


# instance fields
.field private h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private showFavorites:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V
    .locals 1
    .param p1, "h5Session"    # Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .prologue
    .line 45
    invoke-direct {p0}, Lipd;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->showFavorites:Ljava/lang/Boolean;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 47
    return-void
.end method

.method private clearRender(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 296
    .line 3121
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 296
    const-string/jumbo v8, "range"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 297
    .local v5, "rangeParam":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "location"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 298
    .local v4, "location":I
    const-string/jumbo v7, "length"

    invoke-static {v5, v7, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 300
    .local v3, "length":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v1

    .line 301
    .local v1, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 302
    const-string/jumbo v7, "success"

    const-string/jumbo v8, "false"

    invoke-interface {p2, v7, v8}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 343
    :goto_0
    return-void

    .line 306
    :cond_0
    if-ltz v4, :cond_1

    if-gez v3, :cond_2

    .line 307
    :cond_1
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 308
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "error"

    const-string/jumbo v8, "2"

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v7, "message"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-interface {p2, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 314
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    if-le v4, v3, :cond_3

    .line 315
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 316
    .restart local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "error"

    const-string/jumbo v8, "2"

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v7, "message"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-interface {p2, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 322
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_4

    .line 323
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 324
    .restart local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "error"

    const-string/jumbo v8, "2"

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v7, "message"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-interface {p2, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 330
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v3, v7, :cond_5

    .line 331
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 334
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v7, :cond_6

    .line 335
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 336
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    .line 337
    .local v0, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->clearPreFragment(II)V

    .line 339
    .end local v0    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 340
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "urls"

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v7, "success"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0
.end method

.method private getH5PreRenderMax()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x3

    .line 262
    const-string/jumbo v3, "H5_preRenderMax"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "preRanderMax":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 267
    :cond_1
    :try_start_0
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "globalException":Ljava/lang/Exception;
    const-string/jumbo v3, "H5PreRenderPlugin"

    const-string/jumbo v4, "exception detail."

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private kickOutPreRender(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "kickOut"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v1

    .line 278
    .local v1, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 283
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    .line 284
    .local v0, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    const-string/jumbo v2, "last"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 286
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 285
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->clearPreFragment(II)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {v0, v3, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->clearPreFragment(II)V

    goto :goto_0
.end method

.method private openPreRenderByPlugin(Lcom/alipay/mobile/h5container/api/H5Event;Z)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "open"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "H5PreRenderPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openPreRenderByPlugin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->openPreRenderByPlugin(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method private declared-synchronized preRender(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 25
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 109
    monitor-enter p0

    .line 2081
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    move-object/from16 v19, v0

    .line 110
    .local v19, "target":Liob;
    move-object/from16 v0, v19

    instance-of v0, v0, Liop;

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 111
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "invalid target!"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v7

    .line 116
    .local v7, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    move-object/from16 v0, v19

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object v6, v0

    .line 2121
    .local v6, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v17, v0

    .line 119
    .local v17, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v22, "windowParams"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v21

    .line 120
    .local v21, "windowParams":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "currentUrl":Ljava/lang/String;
    const-string/jumbo v22, "kickOut"

    const-string/jumbo v23, "first"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "kickOut":Ljava/lang/String;
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 125
    :cond_2
    new-instance v18, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 126
    .local v18, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v22

    if-nez v22, :cond_3

    .line 127
    const-string/jumbo v22, "error"

    const-string/jumbo v23, "2"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v22, "message"

    .line 129
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/alipay/mobile/nebula/R$string;->h5_wrongparam:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 128
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    .end local v4    # "currentUrl":Ljava/lang/String;
    .end local v6    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .end local v7    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .end local v11    # "kickOut":Ljava/lang/String;
    .end local v17    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "target":Liob;
    .end local v21    # "windowParams":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 133
    .restart local v4    # "currentUrl":Ljava/lang/String;
    .restart local v6    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .restart local v7    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .restart local v11    # "kickOut":Ljava/lang/String;
    .restart local v17    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "target":Liob;
    .restart local v21    # "windowParams":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :try_start_2
    const-string/jumbo v22, "none"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->kickOutPreRender(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v22, "urls"

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v22, "success"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 143
    .end local v18    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const-string/jumbo v22, "url"

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 145
    .local v20, "url":Ljava/lang/String;
    const-string/jumbo v22, "param"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 147
    .local v16, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v15, "oldParams":Landroid/os/Bundle;
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 151
    const-string/jumbo v22, "preRpc"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 152
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "in H5SessionPlugin delete preRpc startparam"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v22, "preRpc"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 157
    :cond_5
    const-string/jumbo v22, "navSearchBar_type"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 158
    const-string/jumbo v22, "navSearchBar_type"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 161
    :cond_6
    const-string/jumbo v22, "backgroundColor"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 162
    const-string/jumbo v22, "backgroundColor"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 166
    :cond_7
    const-string/jumbo v22, "transparentTitle"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 167
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "in H5SessionPlugin delete transparentTitle startparam"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v22, "transparentTitle"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 171
    :cond_8
    const-string/jumbo v22, "transparentTitleTextAuto"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 172
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "in H5SessionPlugin delete transparentTitleTextAuto startparam"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v22, "transparentTitleTextAuto"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 177
    :cond_9
    const-string/jumbo v22, "titleImage"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 178
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "in H5SessionPlugin delete titleImage startparam"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v22, "titleImage"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 182
    :cond_a
    const-string/jumbo v22, "bounceTopColor"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 183
    const-string/jumbo v22, "bounceTopColor"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 187
    :cond_b
    const-string/jumbo v22, "fragmentType"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 188
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "in H5SessionPlugin delete fragmentType startparam"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v22, "fragmentType"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 192
    :cond_c
    const-string/jumbo v22, "createPageSence"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 193
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "in H5SessionPlugin delete createPageSence startparam"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v22, "createPageSence"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 197
    :cond_d
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_f

    .line 198
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v14, "newParams":Landroid/os/Bundle;
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    .line 200
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v14

    .line 201
    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 203
    .local v10, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 204
    .local v9, "key":Ljava/lang/String;
    invoke-static {v15, v9}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    .end local v9    # "key":Ljava/lang/String;
    :cond_e
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 209
    .end local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "newParams":Landroid/os/Bundle;
    :cond_f
    const-string/jumbo v22, "showFavorites"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->showFavorites:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getParams()Landroid/os/Bundle;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v20

    .line 212
    const-string/jumbo v22, "H5PreRenderPlugin"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "pushWindow url "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v22, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v22, "Referer"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v22, "isPrerender"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string/jumbo v22, "launchParamsTag"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, "launchParamsTag":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 218
    const-string/jumbo v22, "appId"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v12}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 221
    .local v13, "launcher":Landroid/os/Bundle;
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Landroid/os/Bundle;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_10

    .line 222
    const-string/jumbo v22, "H5PreRenderPlugin"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "launcher "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v15, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 227
    .end local v3    # "appId":Ljava/lang/String;
    .end local v13    # "launcher":Landroid/os/Bundle;
    :cond_10
    const-string/jumbo v22, "H5PreRenderPlugin"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 229
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 230
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v22

    .line 231
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 235
    const-string/jumbo v22, "fromType"

    const-string/jumbo v23, "pushWindow"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v22

    if-eqz v22, :cond_12

    const/16 v22, 0x0

    .line 237
    move/from16 v0, v22

    invoke-virtual {v7, v15, v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Landroid/os/Bundle;I)Z

    move-result v22

    if-nez v22, :cond_12

    .line 238
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentCount()I

    move-result v22

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->getH5PreRenderMax()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_12

    .line 240
    const-string/jumbo v22, "none"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 241
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 242
    .local v8, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v22, "urls"

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v22, "success"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 247
    .end local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->kickOutPreRender(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V

    .line 249
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 250
    const-string/jumbo v22, "H5PreRenderPlugin"

    const-string/jumbo v23, "##h5prerender## add prerender by jsapi"

    invoke-static/range {v22 .. v23}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 252
    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v5

    .line 253
    .local v5, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v15, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addPreFragment(Landroid/os/Bundle;I)V

    .line 255
    .end local v5    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_13
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 256
    .restart local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v22, "urls"

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getUrls()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v22, "success"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 81
    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "preRender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->openPreRenderByPlugin(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->preRender(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 85
    const-string/jumbo v1, "H5PreRenderPlugin"

    const-string/jumbo v2, "pre_render"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return v3

    .line 86
    :cond_1
    const-string/jumbo v1, "clearRender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->openPreRenderByPlugin(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->clearRender(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 89
    const-string/jumbo v1, "H5PreRenderPlugin"

    const-string/jumbo v2, "clear_render"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo v1, "finishRender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 70
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "showFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->showFavorites:Ljava/lang/Boolean;

    .line 76
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    const-string/jumbo v1, "hideFavorites"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->showFavorites:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public onInitialize(Liob;)V
    .locals 0
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lipd;->onInitialize(Liob;)V

    .line 66
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 56
    const-string/jumbo v0, "preRender"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "clearRender"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "finishRender"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "showFavorites"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "hideFavorites"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;->h5Session:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 52
    return-void
.end method
