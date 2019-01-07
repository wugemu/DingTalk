.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;
.super Ljava/lang/Object;
.source "MailAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$accountId:J

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$datasource:Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;JLcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 1
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$datasource:Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$accountId:J

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 124
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    .prologue
    .line 116
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 120
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V
    .locals 7
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 112
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$datasource:Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$accountId:J

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->val$mailServerId:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->handleMailReadListResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V

    .line 113
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V

    return-void
.end method
