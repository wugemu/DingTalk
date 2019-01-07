.class final Lhnu$3;
.super Ljava/lang/Object;
.source "MiniAppServiceWorkerControllerProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhnu;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lipb;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lipb;

.field final synthetic e:Lhnu;


# direct methods
.method constructor <init>(Lhnu;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lipb;)V
    .locals 0
    .param p1, "this$0"    # Lhnu;

    .prologue
    .line 466
    iput-object p1, p0, Lhnu$3;->e:Lhnu;

    iput-object p2, p0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lhnu$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lhnu$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lhnu$3;->d:Lipb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 471
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v17, "service_context"

    const/16 v18, 0x0

    .line 472
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    .line 474
    .local v15, "isServiceContext":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v17, "viewId"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu$3;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lhnu;->a(Lhnu;ILjava/lang/String;)Liop;

    move-result-object v8

    .line 480
    .local v8, "h5Page":Liop;
    :goto_0
    if-eqz v15, :cond_1

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    invoke-static {v4}, Lhnu;->a(Lhnu;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "handleMsgFromJs get h5Page isServiceContext"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 484
    const/4 v4, 0x0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    .line 485
    .local v9, "activity":Landroid/content/Context;
    if-nez v9, :cond_0

    .line 486
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 488
    :cond_0
    invoke-static {v9}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerPageManager;->getInstance(Landroid/content/Context;)Liop;

    move-result-object v8

    .line 491
    .end local v9    # "activity":Landroid/content/Context;
    :cond_1
    if-nez v8, :cond_4

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    invoke-static {v4}, Lhnu;->a(Lhnu;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "handleMsgFromJs h5Page == null return"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 494
    .local v2, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_2

    .line 495
    const-string/jumbo v3, "H5_SW_PageNull"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lhnu$3;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lhnu$3;->b:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v2    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v8    # "h5Page":Liop;
    .end local v15    # "isServiceContext":Z
    :cond_2
    :goto_1
    return-void

    .line 477
    .restart local v15    # "isServiceContext":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v17, "viewId"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v14

    .line 478
    .local v14, "id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnu$3;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v4, v14, v0}, Lhnu;->a(Lhnu;ILjava/lang/String;)Liop;

    move-result-object v8

    .restart local v8    # "h5Page":Liop;
    goto/16 :goto_0

    .line 499
    .end local v14    # "id":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v17, "action"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v17, "data"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 501
    .local v16, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v17, "clientId"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "clientId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 503
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 505
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    invoke-static {v4}, Lhnu;->a(Lhnu;)Ljava/lang/String;

    move-result-object v4

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "clientId is "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v10, Lcom/alipay/mobile/h5container/api/H5Event$a;

    invoke-direct {v10}, Lcom/alipay/mobile/h5container/api/H5Event$a;-><init>()V

    .line 508
    .local v10, "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1202
    iput-object v6, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 1217
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 2207
    iput-object v8, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 509
    const-string/jumbo v4, "call"

    .line 2222
    iput-object v4, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->g:Ljava/lang/String;

    .line 3212
    iput-object v5, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->c:Ljava/lang/String;

    .line 509
    const/4 v4, 0x0

    .line 3237
    iput-boolean v4, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->f:Z

    .line 510
    const-string/jumbo v4, "fromWork"

    .line 3247
    iput-object v4, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->i:Ljava/lang/String;

    .line 517
    :goto_2
    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5Event$a;->a()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v12

    .line 518
    .local v12, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    invoke-interface {v8}, Liop;->getBridge()Linx;

    move-result-object v7

    .line 519
    .local v7, "h5Bridge":Linx;
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->d:Lipb;

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerBridgeContext;-><init>(Lipb;Ljava/lang/String;Ljava/lang/String;Linx;Liop;)V

    .line 522
    .local v3, "context":Liny;
    if-eqz v7, :cond_7

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    invoke-static {v4}, Lhnu;->a(Lhnu;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "use bridge send event"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-interface {v7, v12, v3}, Linx;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 532
    .end local v3    # "context":Liny;
    .end local v5    # "clientId":Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "h5Bridge":Linx;
    .end local v8    # "h5Page":Liop;
    .end local v10    # "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    .end local v12    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local v15    # "isServiceContext":Z
    .end local v16    # "params":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v11

    .line 533
    .local v11, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    invoke-static {v4}, Lhnu;->a(Lhnu;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4202
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v5    # "clientId":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v8    # "h5Page":Liop;
    .restart local v10    # "builder":Lcom/alipay/mobile/h5container/api/H5Event$a;
    .restart local v15    # "isServiceContext":Z
    .restart local v16    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    :try_start_1
    iput-object v6, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 4217
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 5207
    iput-object v8, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 513
    const-string/jumbo v4, "call"

    .line 5222
    iput-object v4, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->g:Ljava/lang/String;

    .line 6212
    iput-object v5, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->c:Ljava/lang/String;

    .line 513
    const/4 v4, 0x0

    .line 6237
    iput-boolean v4, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->f:Z

    .line 6242
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->h:Z

    .line 514
    const-string/jumbo v4, "fromWork"

    .line 6247
    iput-object v4, v10, Lcom/alipay/mobile/h5container/api/H5Event$a;->i:Ljava/lang/String;

    goto :goto_2

    .line 526
    .restart local v3    # "context":Liny;
    .restart local v7    # "h5Bridge":Linx;
    .restart local v12    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lhnu$3;->e:Lhnu;

    invoke-static {v4}, Lhnu;->a(Lhnu;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "use service send event"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v13

    .line 528
    .local v13, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v13, :cond_2

    .line 529
    invoke-virtual {v13, v12, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
