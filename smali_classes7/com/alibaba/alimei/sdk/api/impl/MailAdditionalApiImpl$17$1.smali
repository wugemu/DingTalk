.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;
.super Ljava/lang/Object;
.source "MailAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$datasource:Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$datasource:Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 642
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 643
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const-string/jumbo v1, "getMailInfoByMail fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    .prologue
    .line 632
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 620
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 636
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 637
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const-string/jumbo v1, "getMailInfoByMail fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V
    .locals 7
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 623
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v0

    .line 624
    .local v0, "mailAdditionalDatasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;->val$serverId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->handleMailInfoStatus(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V

    .line 625
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$datasource:Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17;->val$serverId:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->queryMailParticipantsMap(JLjava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 626
    .local v1, "participantsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v1, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 620
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$17$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V

    return-void
.end method
