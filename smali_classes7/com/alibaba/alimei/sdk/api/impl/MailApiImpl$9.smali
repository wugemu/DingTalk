.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;
.super Ljava/lang/Object;
.source "MailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->loadMultipleHistoryMailsFromServer(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;[J[I)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$syncFolderIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/util/ArrayList;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$syncFolderIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 731
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailApiImpl loadMultipleHistoryMails:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v1, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 733
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 671
    check-cast p1, [Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->onPostExecute([Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V

    return-void
.end method

.method public onPostExecute([Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V
    .locals 0
    .param p1, "result"    # [Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .prologue
    .line 721
    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 725
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailApiImpl loadMultipleHistoryMails:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v1, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 727
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 671
    check-cast p1, [Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->onSuccess([Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V

    return-void
.end method

.method public onSuccess([Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)V
    .locals 20
    .param p1, "syncResult"    # [Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .prologue
    .line 674
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 675
    .local v3, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    .line 676
    .local v18, "length":I
    move/from16 v0, v18

    new-array v12, v0, [Z

    .line 677
    .local v12, "isNotifyChanged":[Z
    move/from16 v0, v18

    new-array v11, v0, [Z

    .line 678
    .local v11, "isSaveOldestItem":[Z
    move/from16 v0, v18

    new-array v9, v0, [Z

    .line 679
    .local v9, "isUpdateSyncKey":[Z
    move/from16 v0, v18

    new-array v8, v0, [Z

    .line 680
    .local v8, "isFullSync":[Z
    move/from16 v0, v18

    new-array v7, v0, [J

    .line 681
    .local v7, "fIds":[J
    const/16 v16, 0x0

    .line 682
    .local v16, "hasMore":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 683
    const/4 v4, 0x1

    aput-boolean v4, v11, v17

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$syncFolderIds:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v7, v17

    .line 685
    const/4 v4, 0x1

    aput-boolean v4, v12, v17

    .line 686
    const/4 v4, 0x0

    aput-boolean v4, v9, v17

    .line 687
    const/4 v4, 0x0

    aput-boolean v4, v8, v17

    .line 689
    :try_start_0
    aget-object v4, p1, v17

    if-eqz v4, :cond_2

    .line 690
    aget-object v4, p1, v17

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getAddedMails()Ljava/util/List;

    move-result-object v2

    .line 691
    .local v2, "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz v2, :cond_1

    .line 692
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 693
    const/16 v16, 0x1

    .line 695
    :cond_0
    const-string/jumbo v4, "MailApiImpl "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "loadMultipleHistoryMails added count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v2    # "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 698
    :cond_2
    const-string/jumbo v4, "MailApiImpl "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "loadMultipleHistoryMails results contains null ~! results["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 701
    :catch_0
    move-exception v19

    .line 702
    .local v19, "tr":Ljava/lang/Throwable;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 703
    const-string/jumbo v4, "MailApiImpl "

    const-string/jumbo v5, "loadMultipleHistoryMails print logs error"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 713
    .end local v19    # "tr":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v6, v6, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    move-object/from16 v10, p1

    invoke-interface/range {v3 .. v15}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleMailSyncResults(JLjava/lang/String;[J[Z[Z[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;[Z[ZZILcom/alibaba/alimei/sdk/api/MailApi;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$9;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 717
    return-void
.end method
