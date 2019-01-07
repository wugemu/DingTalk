.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;
.super Ljava/lang/Object;
.source "MailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 341
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 342
    const-string/jumbo v0, "MailApiImpl "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshMailsAndQueryAllLocal:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .prologue
    .line 331
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 315
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 336
    const-string/jumbo v0, "MailApiImpl "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshMailsAndQueryAllLocal:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V
    .locals 16
    .param p1, "syncResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 318
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 319
    .local v1, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;->val$accountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

    iget-wide v5, v5, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;->val$folderId:J

    const-string/jumbo v7, "0"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v8, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 320
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const-string/jumbo v9, "0"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$box:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v10, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 321
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

    iget-object v14, v9, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    move-object/from16 v9, p1

    .line 319
    invoke-interface/range {v1 .. v14}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;JZZLcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;ZZZILcom/alibaba/alimei/sdk/api/MailApi;)Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4;->val$folderId:J

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryAllLocalMails(JJLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 325
    .local v15, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v15, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 326
    const-string/jumbo v3, "MailApiImpl "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshMailsAndQueryAllLocal handleMailSyncResults finish; queryAllLocalMails size = "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v15, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 326
    :cond_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 315
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$4$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V

    return-void
.end method
