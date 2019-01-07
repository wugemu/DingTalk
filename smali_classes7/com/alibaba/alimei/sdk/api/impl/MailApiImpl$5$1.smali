.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;
.super Ljava/lang/Object;
.source "MailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 413
    const-string/jumbo v0, "MailApiImpl "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshMails:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .prologue
    .line 402
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 387
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 407
    const-string/jumbo v0, "MailApiImpl "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshMails:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V
    .locals 15
    .param p1, "syncResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 390
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 391
    .local v0, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$folderId:J

    const-string/jumbo v6, "0"

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 392
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const-string/jumbo v8, "0"

    iget-object v9, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v9, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 393
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;

    iget-object v13, v8, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    move-object/from16 v8, p1

    .line 391
    invoke-interface/range {v0 .. v13}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    move-result-object v14

    .line 396
    .local v14, "group":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v14, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 397
    const-string/jumbo v1, "MailApiImpl "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshMails handleMailSyncResults finish : data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 387
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V

    return-void
.end method
