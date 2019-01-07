.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;
.super Ljava/lang/Object;
.source "MailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 1730
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportOrTrustSpamMail fail, exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 1732
    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1720
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1703
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportOrTrustSpamMail fail, exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 1726
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "success"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1706
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1707
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1709
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 1710
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v4, v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->val$serverId:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->deleteMailByServerIds(JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 1714
    .end local v1    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v0, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1715
    return-void

    .line 1712
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportOrTrustSpamMail fail, serverId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->val$serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1703
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
