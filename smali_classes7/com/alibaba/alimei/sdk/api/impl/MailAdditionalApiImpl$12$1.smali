.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;
.super Ljava/lang/Object;
.source "MailAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 482
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 483
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    .prologue
    .line 475
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 464
    check-cast p1, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 479
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;)V
    .locals 7
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 467
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 468
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;->val$mailServerIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 469
    .local v5, "mailServerId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v4, v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12;->val$tags:Ljava/util/List;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->removeMailTags(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 471
    .end local v5    # "mailServerId":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 464
    check-cast p1, Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$12$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;)V

    return-void
.end method
