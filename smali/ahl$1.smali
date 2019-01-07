.class final Lahl$1;
.super Ljava/lang/Object;
.source "SyncMultipleMailsTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<[",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lahl;


# direct methods
.method constructor <init>(Lahl;[Z)V
    .locals 0
    .param p1, "this$0"    # Lahl;

    .prologue
    .line 284
    iput-object p1, p0, Lahl$1;->b:Lahl;

    iput-object p2, p0, Lahl$1;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 398
    iget-object v1, p0, Lahl$1;->b:Lahl;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v1, v2}, Lahl;->a(Lahl;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 399
    const-string/jumbo v0, "1000"

    .line 400
    .local v0, "errCode":Ljava/lang/String;
    iget-object v1, p0, Lahl$1;->b:Lahl;

    const/4 v2, 0x0

    const-string/jumbo v3, "1"

    invoke-static {v1, v2, v3, v0, v0}, Lahl;->a(Lahl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 8
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 367
    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v7

    invoke-static {v6, v7}, Lahl;->a(Lahl;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "SyncMultipleMailsTask: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v6, " accountName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lahl$1;->b:Lahl;

    invoke-static {v7}, Lahl;->f(Lahl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string/jumbo v6, " sync mails error-->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->n(Lahl;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->h(Lahl;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->o(Lahl;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->h(Lahl;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    iget-object v7, p0, Lahl$1;->b:Lahl;

    invoke-static {v7}, Lahl;->h(Lahl;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 375
    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->p(Lahl;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move v3, v5

    .line 376
    .local v3, "length":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->h(Lahl;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 377
    const-string/jumbo v6, " folderServerId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lahl$1;->b:Lahl;

    invoke-static {v7}, Lahl;->h(Lahl;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string/jumbo v6, " syncKey:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lahl$1;->b:Lahl;

    invoke-static {v7}, Lahl;->o(Lahl;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    if-ge v2, v3, :cond_0

    .line 380
    const-string/jumbo v6, " newOldestItemId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lahl$1;->b:Lahl;

    invoke-static {v7}, Lahl;->p(Lahl;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->p(Lahl;)[Ljava/lang/String;

    move-result-object v6

    array-length v3, v6

    goto :goto_0

    .line 384
    :cond_2
    const-string/jumbo v6, ", isPushSync:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lahl$1;->b:Lahl;

    invoke-static {v7}, Lahl;->l(Lahl;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "bizMsg":Ljava/lang/String;
    const-string/jumbo v6, "SyncMultipleMailsTask"

    invoke-static {v6, v0}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v6, "SyncMultipleMailsTask"

    invoke-static {v6, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v6, p0, Lahl$1;->b:Lahl;

    invoke-static {v6}, Lahl;->n(Lahl;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "errCode":Ljava/lang/String;
    iget-object v6, p0, Lahl$1;->b:Lahl;

    const-string/jumbo v7, "1"

    invoke-static {v6, v5, v7, v1, v1}, Lahl;->a(Lahl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 284
    move-object/from16 v8, p1

    check-cast v8, [Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .line 1287
    iget-object v0, p0, Lahl$1;->b:Lahl;

    invoke-static {v0}, Lahl;->a(Lahl;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "Y"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lahl$1;->b:Lahl;

    invoke-static {v0}, Lahl;->a(Lahl;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 1290
    array-length v0, v8

    .line 1291
    iget-object v1, p0, Lahl$1;->b:Lahl;

    invoke-static {v1}, Lahl;->b(Lahl;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1293
    const-string/jumbo v0, "SyncMulitipleMailTask---\u8fd4\u56de\u7684\u6570\u636e\u548c\u8bf7\u6c42\u7684\u6570\u636e\u5e94\u8be5\u4e00\u81f4"

    invoke-static {v0}, Lyx;->c(Ljava/lang/String;)I

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    const/4 v2, 0x0

    .line 1299
    new-array v6, v0, [Z

    .line 1300
    new-array v10, v0, [Z

    .line 1301
    const/4 v1, 0x0

    .line 1302
    const/4 v0, 0x0

    move v14, v1

    move v1, v2

    :goto_1
    iget-object v2, p0, Lahl$1;->b:Lahl;

    invoke-static {v2}, Lahl;->b(Lahl;)I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1303
    aget-object v3, v8, v0

    .line 1304
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getOldestItemId()Ljava/lang/String;

    move-result-object v2

    .line 1305
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1306
    iget-object v4, p0, Lahl$1;->b:Lahl;

    invoke-static {v4}, Lahl;->c(Lahl;)[Ljava/lang/String;

    move-result-object v4

    aput-object v2, v4, v0

    .line 1313
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getCount()I

    move-result v4

    .line 1315
    if-lez v4, :cond_3

    .line 1316
    iget-object v2, p0, Lahl$1;->b:Lahl;

    invoke-static {v2}, Lahl;->e(Lahl;)[I

    move-result-object v2

    iget-object v5, p0, Lahl$1;->b:Lahl;

    invoke-static {v5}, Lahl;->e(Lahl;)[I

    move-result-object v5

    aget v5, v5, v0

    add-int/2addr v5, v4

    aput v5, v2, v0

    .line 1319
    :cond_3
    iget-object v2, p0, Lahl$1;->b:Lahl;

    invoke-static {v2}, Lahl;->d(Lahl;)[I

    move-result-object v2

    aget v2, v2, v0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    const/4 v2, 0x1

    :goto_3
    aput-boolean v2, v6, v0

    .line 1320
    const/4 v2, 0x1

    aput-boolean v2, v10, v0

    .line 1322
    iget-object v2, p0, Lahl$1;->b:Lahl;

    invoke-static {v2, v3, v0}, Lahl;->a(Lahl;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;I)Z

    move-result v2

    or-int/2addr v2, v1

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mAccountName: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lahl$1;->b:Lahl;

    invoke-static {v5}, Lahl;->f(Lahl;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", isContinue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", nextSyncKey"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1325
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", folderServerType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lahl$1;->b:Lahl;

    .line 1326
    invoke-static {v4}, Lahl;->g(Lahl;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", folderServerId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lahl$1;->b:Lahl;

    .line 1327
    invoke-static {v4}, Lahl;->h(Lahl;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", newOldestItemId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1328
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getOldestItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {v1}, Lyx;->b(Ljava/lang/String;)I

    .line 1330
    iget-object v1, p0, Lahl$1;->b:Lahl;

    invoke-static {v1}, Lahl;->i(Lahl;)[Z

    move-result-object v1

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 1331
    if-eqz v2, :cond_7

    .line 1332
    const/4 v1, 0x1

    .line 1302
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v14, v1

    move v1, v2

    goto/16 :goto_1

    .line 1309
    :cond_4
    iget-object v2, p0, Lahl$1;->b:Lahl;

    invoke-static {v2}, Lahl;->d(Lahl;)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    .line 1310
    iget-object v2, p0, Lahl$1;->b:Lahl;

    invoke-static {v2}, Lahl;->c(Lahl;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->setOldestItemId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1319
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1336
    :cond_6
    const/4 v0, 0x1

    .line 1338
    :try_start_0
    iget-object v1, p0, Lahl$1;->b:Lahl;

    invoke-static {v1}, Lahl;->m(Lahl;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    iget-object v2, p0, Lahl$1;->b:Lahl;

    invoke-static {v2}, Lahl;->j(Lahl;)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    iget-object v4, p0, Lahl$1;->b:Lahl;

    invoke-static {v4}, Lahl;->f(Lahl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lahl$1;->b:Lahl;

    invoke-static {v5}, Lahl;->k(Lahl;)[J

    move-result-object v5

    iget-object v7, p0, Lahl$1;->b:Lahl;

    .line 1339
    invoke-static {v7}, Lahl;->i(Lahl;)[Z

    move-result-object v7

    iget-object v9, p0, Lahl$1;->a:[Z

    iget-object v11, p0, Lahl$1;->b:Lahl;

    invoke-static {v11}, Lahl;->l(Lahl;)Z

    move-result v11

    const/4 v12, 0x0

    iget-object v13, p0, Lahl$1;->b:Lahl;

    invoke-static {v13}, Lahl;->f(Lahl;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v13

    .line 1338
    invoke-interface/range {v1 .. v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;[J[Z[Z[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;[Z[ZZILcom/alibaba/alimei/sdk/api/MailApi;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_5
    iget-object v1, p0, Lahl$1;->b:Lahl;

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "2"

    invoke-static {v1, v0, v2, v3, v4}, Lahl;->a(Lahl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    if-eqz v0, :cond_0

    .line 1353
    if-eqz v14, :cond_0

    .line 1354
    iget-object v0, p0, Lahl$1;->b:Lahl;

    invoke-static {v0}, Lahl;->a(Lahl;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 1355
    iget-object v1, p0, Lahl$1;->b:Lahl;

    invoke-static {v1}, Lahl;->a(Lahl;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->clear()V

    .line 1356
    iget-object v1, p0, Lahl$1;->b:Lahl;

    invoke-static {v1, v0}, Lahl;->a(Lahl;Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lahl$1;->b:Lahl;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lahl;->a(Lahl;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Z)V

    goto/16 :goto_0

    .line 1340
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1341
    const/4 v0, 0x0

    .line 1342
    iget-object v2, p0, Lahl$1;->b:Lahl;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v1}, Lahl;->a(Lahl;ZJLjava/lang/Throwable;)V

    .line 1343
    const-string/jumbo v2, "SyncMultipleMailsTask"

    invoke-static {v2, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1344
    const-string/jumbo v2, "SyncMultipleMailsTask"

    const-string/jumbo v3, "2"

    invoke-static {v1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move v1, v14

    goto/16 :goto_4
.end method
