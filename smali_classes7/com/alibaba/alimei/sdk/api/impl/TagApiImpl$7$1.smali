.class Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;
.super Ljava/lang/Object;
.source "TagApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 191
    const-string/jumbo v0, "TagApiImpl"

    const-string/jumbo v1, "update tag network exception"

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 180
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 185
    const-string/jumbo v0, "TagApiImpl"

    const-string/jumbo v1, "update tag exception"

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v1

    .line 170
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/TagDatasource;
    const/4 v0, 0x0

    .line 171
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v4, v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$tagId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$tagName:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$color:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->handleUpdateTagResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
