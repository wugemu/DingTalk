.class final Lahk$1;
.super Ljava/lang/Object;
.source "SyncMailsTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lahk;


# direct methods
.method constructor <init>(Lahk;Z)V
    .locals 0
    .param p1, "this$0"    # Lahk;

    .prologue
    .line 273
    iput-object p1, p0, Lahk$1;->b:Lahk;

    iput-boolean p2, p0, Lahk$1;->a:Z

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
    .line 382
    iget-object v1, p0, Lahk$1;->b:Lahk;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v1, v2}, Lahk;->a(Lahk;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SyncMailsTask onServiceException--->syncKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->m(Lahk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", serverId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahk$1;->b:Lahk;

    .line 385
    invoke-static {v2}, Lahk;->n(Lahk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", serverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahk$1;->b:Lahk;

    .line 386
    invoke-static {v2}, Lahk;->k(Lahk;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMessageOldesetServerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahk$1;->b:Lahk;

    .line 387
    invoke-static {v2}, Lahk;->o(Lahk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {v1, p1}, Lyx;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const-string/jumbo v0, "1000"

    .line 390
    .local v0, "errCode":Ljava/lang/String;
    iget-object v1, p0, Lahk$1;->b:Lahk;

    const/4 v2, 0x0

    const-string/jumbo v3, "1"

    invoke-static {v1, v2, v3, v0, v0}, Lahk;->a(Lahk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 6
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 361
    iget-object v3, p0, Lahk$1;->b:Lahk;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    invoke-static {v3, v4}, Lahk;->a(Lahk;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "SyncMailsTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v3, p0, Lahk$1;->b:Lahk;

    invoke-static {v3}, Lahk;->d(Lahk;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string/jumbo v3, " sync mails error-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lahk$1;->b:Lahk;

    invoke-static {v4}, Lahk;->l(Lahk;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string/jumbo v3, ",syncKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lahk$1;->b:Lahk;

    invoke-static {v4}, Lahk;->m(Lahk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string/jumbo v3, ",folderServerId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lahk$1;->b:Lahk;

    invoke-static {v4}, Lahk;->n(Lahk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string/jumbo v3, ",folderServerType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lahk$1;->b:Lahk;

    invoke-static {v4}, Lahk;->k(Lahk;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string/jumbo v3, ",oldesetServerId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lahk$1;->b:Lahk;

    invoke-static {v4}, Lahk;->o(Lahk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v3, ",isPushSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lahk$1;->b:Lahk;

    invoke-static {v4}, Lahk;->h(Lahk;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "bizmsg":Ljava/lang/String;
    const-string/jumbo v3, "SyncMailsTask"

    invoke-static {v3, v0}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {v0}, Lyx;->c(Ljava/lang/String;)I

    .line 377
    iget-object v3, p0, Lahk$1;->b:Lahk;

    invoke-static {v3}, Lahk;->l(Lahk;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "errCode":Ljava/lang/String;
    iget-object v3, p0, Lahk$1;->b:Lahk;

    const/4 v4, 0x0

    const-string/jumbo v5, "1"

    invoke-static {v3, v4, v5, v1, v1}, Lahk;->a(Lahk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 18

    .prologue
    .line 273
    move-object/from16 v10, p1

    check-cast v10, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->a(Lahk;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v2

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "Y"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->a(Lahk;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getCount()I

    move-result v17

    .line 1280
    if-lez v17, :cond_0

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lahk$1;->b:Lahk;

    invoke-static {v3}, Lahk;->b(Lahk;)I

    move-result v3

    add-int v3, v3, v17

    invoke-static {v2, v3}, Lahk;->a(Lahk;I)I

    .line 1284
    :cond_0
    const/16 v16, 0x1

    .line 1286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->i(Lahk;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lahk$1;->b:Lahk;

    invoke-static {v3}, Lahk;->c(Lahk;)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v3

    iget-wide v3, v3, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lahk$1;->b:Lahk;

    invoke-static {v5}, Lahk;->d(Lahk;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lahk$1;->b:Lahk;

    invoke-static {v6}, Lahk;->e(Lahk;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lahk$1;->b:Lahk;

    .line 1287
    invoke-static {v8}, Lahk;->f(Lahk;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lahk$1;->b:Lahk;

    .line 1288
    invoke-static {v9}, Lahk;->g(Lahk;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lahk$1;->a:Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lahk$1;->b:Lahk;

    invoke-static {v13}, Lahk;->h(Lahk;)Z

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lahk$1;->b:Lahk;

    invoke-static {v15}, Lahk;->d(Lahk;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v15

    .line 1286
    invoke-interface/range {v2 .. v15}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v2, v16

    .line 1296
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lahk$1;->b:Lahk;

    const-string/jumbo v4, "2"

    const-string/jumbo v5, "2"

    const-string/jumbo v6, "2"

    invoke-static {v3, v2, v4, v5, v6}, Lahk;->a(Lahk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    if-eqz v2, :cond_4

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->f(Lahk;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 1303
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getOldestItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getOldestItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lahk;->a(Lahk;Ljava/lang/String;)Ljava/lang/String;

    .line 1310
    :cond_1
    :goto_2
    const/4 v3, 0x0

    .line 1311
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getMails()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getMails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1312
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getMails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 1313
    if-eqz v2, :cond_2

    .line 1316
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/Mail;->getCalendar()Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1317
    const/4 v2, 0x1

    .line 1322
    :goto_3
    if-eqz v2, :cond_3

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->d(Lahk;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->d(Lahk;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v2

    .line 1325
    if-eqz v2, :cond_3

    .line 1326
    sget-object v3, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v3}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v3

    new-instance v4, Lahk$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lahk$1$1;-><init>(Lahk$1;Lcom/alibaba/alimei/sdk/api/CalendarApi;)V

    invoke-interface {v3, v4}, Laie;->a(Ljava/lang/Runnable;)V

    .line 1338
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2, v10}, Lahk;->a(Lahk;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)Z

    move-result v2

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isContinue: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", nextSyncKey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1341
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": newOldestItemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1342
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getOldestItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mCurrentSyncType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lahk$1;->b:Lahk;

    .line 1343
    invoke-static {v4}, Lahk;->f(Lahk;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mFolderServerType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lahk$1;->b:Lahk;

    .line 1344
    invoke-static {v4}, Lahk;->k(Lahk;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1340
    invoke-static {v3}, Lyx;->c(Ljava/lang/String;)I

    .line 1346
    if-eqz v2, :cond_4

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lahk;->a(Lahk;Z)Z

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->a(Lahk;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->bizType:Ljava/lang/String;

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lahk$1;->b:Lahk;

    invoke-static {v3}, Lahk;->a(Lahk;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->clear()V

    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lahk$1;->b:Lahk;

    invoke-static {v3, v2}, Lahk;->b(Lahk;Ljava/lang/String;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v2, v0, v3}, Lahk;->a(Lahk;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Z)V

    .line 273
    :cond_4
    return-void

    .line 1287
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1289
    :catch_0
    move-exception v2

    move-object v3, v2

    .line 1290
    const/4 v2, 0x0

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Lahk$1;->b:Lahk;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v3}, Lahk;->a(Lahk;ZJLjava/lang/Throwable;)V

    .line 1292
    const-string/jumbo v4, "SyncMailsTask"

    invoke-static {v4, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1293
    const-string/jumbo v4, "SyncMailsTask"

    const-string/jumbo v5, "2"

    invoke-static {v3}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1306
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lahk$1;->b:Lahk;

    invoke-static {v2}, Lahk;->j(Lahk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->setOldestItemId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move v2, v3

    goto/16 :goto_3
.end method
