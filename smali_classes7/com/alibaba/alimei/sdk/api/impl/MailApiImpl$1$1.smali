.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;
.super Ljava/lang/Object;
.source "MailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$mAccountId:J

.field final synthetic val$mAccountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;JLjava/lang/String;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;

    iput-wide p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$mAccountId:J

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$mAccountName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 194
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 195
    const-string/jumbo v0, "MailApiImpl "

    const-string/jumbo v1, "queryMailByTagFromServer onNetworkException"

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    .prologue
    .line 186
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 190
    const-string/jumbo v0, "MailApiImpl "

    const-string/jumbo v1, "queryMailByTagFromServer onServiceException"

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V
    .locals 7
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 171
    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 173
    .local v0, "size":I
    :goto_0
    const-string/jumbo v2, "MailApiImpl "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryMailByTagFromServer tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-lez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 176
    .local v1, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$mAccountId:J

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$mAccountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$tag:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->handleSearchMailResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V

    .line 181
    .end local v0    # "size":I
    .end local v1    # "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object p1, v2, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 182
    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;->getMailList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 179
    :cond_2
    const-string/jumbo v2, "MailApiImpl "

    const-string/jumbo v3, "queryMailByTagFromServer error for result is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V

    return-void
.end method
