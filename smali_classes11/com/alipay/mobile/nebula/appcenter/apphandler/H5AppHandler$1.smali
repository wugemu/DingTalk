.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "H5AppHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalCopyParam:Landroid/os/Bundle;

.field final synthetic val$finalHasAppInfo:Z

.field final synthetic val$finalNbsv:Ljava/lang/String;

.field final synthetic val$finalSyncUpdate:Ljava/lang/String;

.field final synthetic val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic val$nbOffMode:Ljava/lang/String;

.field final synthetic val$nbUrl:Ljava/lang/String;

.field final synthetic val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic val$syncOffline:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$syncOffline:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalNbsv:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-boolean p6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalHasAppInfo:Z

    iput-object p7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalSyncUpdate:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$nbUrl:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$nbOffMode:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalCopyParam:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 21
    .param p1, "success"    # Z
    .param p2, "limit"    # Z

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isOffLine(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 483
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setRequestEndTime(J)V

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$syncOffline:Ljava/lang/String;

    .line 404
    .local v3, "offline":Ljava/lang/String;
    const/16 v17, 0x0

    .line 406
    .local v17, "rpcError":Z
    const/4 v7, 0x0

    .line 408
    .local v7, "afterUpdateApp":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    const/16 v20, 0x0

    .line 409
    .local v20, "newBundle":Landroid/os/Bundle;
    if-eqz p1, :cond_7

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalNbsv:Ljava/lang/String;

    .line 412
    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    .line 413
    if-nez v7, :cond_1

    .line 414
    const/16 v18, 0x0

    .line 415
    .local v18, "finalResult":Z
    const/16 v17, 0x0

    .line 466
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateApp onResult "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " nbsv "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalNbsv:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " finalResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-eqz v18, :cond_9

    .line 472
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/appcenter/rpcblacklist/H5RpcBlackList;->remove(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalSyncUpdate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$nbUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$nbOffMode:Ljava/lang/String;

    if-eqz v20, :cond_8

    move-object/from16 v9, v20

    :goto_2
    invoke-static/range {v2 .. v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 417
    .end local v18    # "finalResult":Z
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v2

    iget-object v4, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setVersion(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v4, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    if-eqz v2, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->update(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalHasAppInfo:Z

    if-nez v2, :cond_6

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "newBundle":Landroid/os/Bundle;
    check-cast v20, Landroid/os/Bundle;

    .line 431
    .restart local v20    # "newBundle":Landroid/os/Bundle;
    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->mergeConmonStartParam(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Landroid/os/Bundle;

    .line 433
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$100(Landroid/os/Bundle;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-object/from16 v0, v20

    invoke-static {v2, v7, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->setAppType(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    .line 437
    const-string/jumbo v2, "nboffline"

    .line 438
    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 439
    const-string/jumbo v2, "nboffline"

    .line 440
    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    :cond_3
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 445
    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->enableKeepAlive(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 446
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->needStopLiteProcessByAppId(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 447
    :cond_4
    const-class v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 448
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 449
    .local v19, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v19, :cond_5

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->stopLiteProcessByAppIdInServer(Ljava/lang/String;)V

    .line 454
    .end local v19    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_5
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyApp(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 455
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->addTinyAppRecord(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 459
    :cond_6
    const/16 v18, 0x1

    .restart local v18    # "finalResult":Z
    goto/16 :goto_1

    .line 462
    .end local v18    # "finalResult":Z
    :cond_7
    const/16 v18, 0x0

    .line 463
    .restart local v18    # "finalResult":Z
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 473
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalCopyParam:Landroid/os/Bundle;

    goto/16 :goto_2

    .line 479
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalSyncUpdate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$nbUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$h5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v14, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$nbOffMode:Ljava/lang/String;

    if-eqz v20, :cond_a

    move-object/from16 v16, v20

    :goto_3
    move-object v12, v3

    move-object v13, v7

    invoke-static/range {v8 .. v17}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$400(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->val$finalCopyParam:Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto :goto_3
.end method
