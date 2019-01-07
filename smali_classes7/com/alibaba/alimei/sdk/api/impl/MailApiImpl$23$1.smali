.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;
.super Ljava/lang/Object;
.source "MailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 1465
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailApiImpl  searchMailFromServer NetworkException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 1467
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;

    .prologue
    .line 1457
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1414
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailApiImpl  searchMailFromServer onServiceException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 1462
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;)V
    .locals 10
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1417
    if-nez p1, :cond_0

    .line 1418
    const-string/jumbo v7, "MailApiImpl "

    const-string/jumbo v8, "searchAttachmentFromServer return null!!!"

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :goto_0
    return-void

    .line 1422
    :cond_0
    new-instance v6, Lagu;

    invoke-direct {v6}, Lagu;-><init>()V

    .line 1423
    .local v6, "resultModel":Lagu;
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;->getTotal()I

    move-result v7

    .line 2040
    iput v7, v6, Lagu;->b:I

    .line 1424
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;->getMailList()Ljava/util/List;

    move-result-object v3

    .line 1425
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;>;"
    if-eqz v3, :cond_4

    .line 1426
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1427
    .local v4, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;

    .line 1428
    .local v2, "item":Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;
    if-eqz v2, :cond_1

    .line 1432
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;->getAttachList()Ljava/util/List;

    move-result-object v1

    .line 1433
    .local v1, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1434
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/Attach;

    .line 1435
    .local v0, "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    if-eqz v0, :cond_2

    .line 1439
    iget-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    .line 1440
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1444
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;

    iget-object v9, v9, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;->val$keyword:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1445
    invoke-static {v2, v0}, Laja;->a(Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;Lcom/alibaba/alimei/restfulapi/data/Attach;)Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3032
    .end local v0    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v1    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .end local v2    # "item":Lcom/alibaba/alimei/restfulapi/data/MailSearchItem;
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    iput-object v4, v6, Lagu;->a:Ljava/util/List;

    .line 1452
    .end local v4    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;"
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;->getTotal()I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;

    iget v8, v8, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23;->val$length:I

    if-lt v7, v8, :cond_5

    const/4 v7, 0x1

    .line 3048
    :goto_2
    iput-boolean v7, v6, Lagu;->c:Z

    .line 1453
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v6, v7, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1452
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1414
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$23$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/SearchMailResult;)V

    return-void
.end method
