.class final Ltu$1;
.super Ljava/lang/Object;
.source "DownloadDentryTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltu;
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
        "Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltu;


# direct methods
.method constructor <init>(Ltu;)V
    .locals 0
    .param p1, "this$0"    # Ltu;

    .prologue
    .line 329
    iput-object p1, p0, Ltu$1;->a:Ltu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 7
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 406
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Ltu;->a(Ltu;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 407
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v1, "callback.onNetworkException: download size: %d, id: %d, error: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltu$1;->a:Ltu;

    .line 408
    invoke-static {v3}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Ltu$1;->a:Ltu;

    invoke-static {v4}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltu$1;->a:Ltu;

    invoke-static {v4}, Ltu;->b(Ltu;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 407
    invoke-static {v0, v1, v2}, Ltu;->b(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-virtual {v0}, Ltu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v1, "callback.onNetworkException: canceled"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)V

    .line 427
    :goto_0
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v1, "callback.onNetworkException: handleCountDown"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->h(Ltu;)V

    .line 429
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->i(Ltu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-static {}, Laif;->a()Laie;

    move-result-object v0

    new-instance v1, Ltu$1$1;

    invoke-direct {v1, p0}, Ltu$1$1;-><init>(Ltu$1;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->g(Ltu;)V

    goto :goto_0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 7
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 389
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Ltu;->a(Ltu;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 390
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v1, "callback.onServiceException: download size: %d, id: %d, error: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltu$1;->a:Ltu;

    .line 391
    invoke-static {v3}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Ltu$1;->a:Ltu;

    invoke-static {v4}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ltu$1;->a:Ltu;

    invoke-static {v4}, Ltu;->b(Ltu;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 390
    invoke-static {v0, v1, v2}, Ltu;->b(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-virtual {v0}, Ltu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v1, "callback.onServiceException: canceled"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)V

    .line 400
    :goto_0
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v1, "callback.onServiceException: handleCountDown"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->h(Ltu;)V

    .line 402
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->g(Ltu;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 329
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;

    .line 1333
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-virtual {v0}, Ltu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v2, "callback.onSuccess: canceled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)V

    .line 1336
    :goto_0
    return-void

    .line 1340
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1341
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v2, "callback.onSuccess: Download entry with content length: %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->getContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0, p1}, Ltu;->a(Ltu;Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;)Z

    move-result v0

    .line 1349
    :goto_1
    iget-object v2, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v3, "callback.onSuccess: DownloadDentryTask isWriteAttachmentSucces: %b"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    if-eqz v0, :cond_3

    .line 1352
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    .line 1353
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    .line 1355
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 1356
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v6, "callback.onSuccess: downloadedSize < dentrySize, downloadedSize: %d, dentrySize: %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v0, v6, v7}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->d(Ltu;)V

    .line 1379
    :goto_2
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v2, "callback.onSuccess: handleCountDown"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->h(Ltu;)V

    goto :goto_0

    .line 1345
    :cond_1
    iget-object v0, p0, Ltu$1;->a:Ltu;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v0, v2}, Ltu;->a(Ltu;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1346
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v2, "callback.onSuccess: Download entry and get an empty response!, error: %s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Ltu$1;->a:Ltu;

    invoke-static {v4}, Ltu;->b(Ltu;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1

    .line 1360
    :cond_2
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v6, "callback.onSuccess: downloadedSize >= dentrySize, downloadedSize: %d, dentrySize: %d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v0, v6, v7}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1361
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    iget-object v2, p0, Ltu$1;->a:Ltu;

    invoke-static {v2}, Ltu;->e(Ltu;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->f(Ltu;)Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    iget-object v2, p0, Ltu$1;->a:Ltu;

    invoke-static {v2}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Ltu$1;->a:Ltu;

    invoke-static {v4}, Ltu;->e(Ltu;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateLocalUrl(JLjava/lang/String;)Z

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    iget-object v2, p0, Ltu$1;->a:Ltu;

    invoke-static {v2}, Ltu;->c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    iget-object v2, p0, Ltu$1;->a:Ltu;

    invoke-static {v2}, Ltu;->f(Ltu;)Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v2

    invoke-interface {v2, v0, v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 1367
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->g(Ltu;)V

    goto/16 :goto_2

    .line 1371
    :cond_3
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-virtual {v0}, Ltu;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1372
    iget-object v0, p0, Ltu$1;->a:Ltu;

    const-string/jumbo v2, "callback.onSuccess: canceled"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltu;->a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1373
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->a(Ltu;)V

    goto/16 :goto_2

    .line 1375
    :cond_4
    iget-object v0, p0, Ltu$1;->a:Ltu;

    invoke-static {v0}, Ltu;->g(Ltu;)V

    goto/16 :goto_2
.end method
