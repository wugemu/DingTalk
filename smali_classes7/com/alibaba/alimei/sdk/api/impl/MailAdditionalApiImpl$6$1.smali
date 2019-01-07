.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;
.super Ljava/lang/Object;
.source "MailAdditionalApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 280
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getFoldersPushSetting "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    .prologue
    .line 269
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 274
    const-string/jumbo v0, "MailAdditionalApiImpl"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getFoldersPushSetting "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;)V
    .locals 1
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object p1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$6$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;)V

    return-void
.end method
