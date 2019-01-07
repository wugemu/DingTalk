.class final Lahp$1;
.super Ljava/lang/Object;
.source "AbsSendMailOrSyncDraftTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahp;
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
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lahp;


# direct methods
.method constructor <init>(Lahp;)V
    .locals 0
    .param p1, "this$0"    # Lahp;

    .prologue
    .line 421
    iput-object p1, p0, Lahp$1;->a:Lahp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 5
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 464
    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v1, v2}, Lahp;->a(Lahp;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 465
    iget-object v1, p0, Lahp$1;->a:Lahp;

    const/16 v2, 0x2328

    invoke-static {v1, v2}, Lahp;->c(Lahp;I)I

    .line 466
    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-virtual {v1}, Lahp;->g()Z

    move-result v0

    .line 467
    .local v0, "isSyncMailDraft":Z
    const-string/jumbo v1, "SendMailORSyncDraft"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "isSyncMailDraft: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 6
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 446
    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v1, v2}, Lahp;->a(Lahp;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 447
    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lahp;->a(Lahp;I)I

    .line 448
    iget-object v1, p0, Lahp$1;->a:Lahp;

    iget-object v2, p0, Lahp$1;->a:Lahp;

    invoke-static {v2}, Lahp;->b(Lahp;)I

    move-result v2

    invoke-static {v1, v2}, Lahp;->c(Lahp;I)I

    .line 450
    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-virtual {v1}, Lahp;->g()Z

    move-result v0

    .line 451
    .local v0, "isSyncMailDraft":Z
    if-eqz v0, :cond_0

    .line 452
    const-string/jumbo v1, "SendMailORSyncDraft"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sync mail draft to server error-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lahp$1;->a:Lahp;

    invoke-static {v3}, Lahp;->d(Lahp;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", msgId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lahp$1;->a:Lahp;

    iget-object v3, v3, Lahp;->a:Lahp$a;

    iget-wide v4, v3, Lahp$a;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_0
    const-string/jumbo v1, "SendMailORSyncDraft"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "isSyncMailDraft: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    return-void

    .line 455
    :cond_0
    const-string/jumbo v1, "SendMailORSyncDraft"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Send mail error-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lahp$1;->a:Lahp;

    invoke-static {v3}, Lahp;->d(Lahp;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", msgId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lahp$1;->a:Lahp;

    iget-object v3, v3, Lahp;->a:Lahp$a;

    iget-wide v4, v3, Lahp$a;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 421
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    .line 1424
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->getMailResults()Ljava/util/List;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1426
    :cond_0
    iget-object v0, p0, Lahp$1;->a:Lahp;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lahp;->a(Lahp;I)I

    .line 1434
    :goto_0
    return-void

    .line 1429
    :cond_1
    iget-object v1, p0, Lahp$1;->a:Lahp;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-static {v1, v0}, Lahp;->a(Lahp;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .line 1430
    iget-object v0, p0, Lahp$1;->a:Lahp;

    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-static {v1}, Lahp;->a(Lahp;)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getResultCode()I

    move-result v1

    invoke-static {v0, v1}, Lahp;->a(Lahp;I)I

    .line 1432
    iget-object v0, p0, Lahp$1;->a:Lahp;

    invoke-static {v0}, Lahp;->b(Lahp;)I

    move-result v0

    const/16 v1, 0x4b2

    if-ne v0, v1, :cond_2

    .line 1433
    iget-object v0, p0, Lahp$1;->a:Lahp;

    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-static {v1}, Lahp;->a(Lahp;)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->getErrorCode()I

    move-result v1

    invoke-static {v0, v1}, Lahp;->b(Lahp;I)I

    .line 1434
    iget-object v0, p0, Lahp$1;->a:Lahp;

    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-static {v1}, Lahp;->c(Lahp;)I

    move-result v1

    invoke-static {v0, v1}, Lahp;->c(Lahp;I)I

    goto :goto_0

    .line 1436
    :cond_2
    iget-object v0, p0, Lahp$1;->a:Lahp;

    iget-object v1, p0, Lahp$1;->a:Lahp;

    invoke-static {v1}, Lahp;->b(Lahp;)I

    move-result v1

    invoke-static {v0, v1}, Lahp;->c(Lahp;I)I

    goto :goto_0
.end method
