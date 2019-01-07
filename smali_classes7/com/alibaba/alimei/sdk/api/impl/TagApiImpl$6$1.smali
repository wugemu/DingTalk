.class Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;
.super Ljava/lang/Object;
.source "TagApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 150
    const-string/jumbo v0, "TagApiImpl"

    const-string/jumbo v1, "add tag network exception"

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    .prologue
    .line 139
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 144
    const-string/jumbo v0, "TagApiImpl"

    const-string/jumbo v1, "add tag exception"

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;)V
    .locals 7
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v1

    .line 132
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/TagDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v4, v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6;->val$tagName:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->handleAddTagResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;)Lcom/alibaba/alimei/sdk/model/MailTagModel;

    move-result-object v0

    .line 133
    .local v0, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v0, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$6$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/AddTagResult;)V

    return-void
.end method
