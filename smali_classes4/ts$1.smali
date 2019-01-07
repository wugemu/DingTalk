.class final Lts$1;
.super Ljava/lang/Object;
.source "CreateUploadIdTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lts;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

.field final synthetic b:Lts;


# direct methods
.method constructor <init>(Lts;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;)V
    .locals 0
    .param p1, "this$0"    # Lts;

    .prologue
    .line 75
    iput-object p1, p0, Lts$1;->b:Lts;

    iput-object p2, p0, Lts$1;->a:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lts$1;->b:Lts;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lts;->a(Lts;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "create upload size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->d(Lts;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->b(Lts;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error--->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lts$1;->b:Lts;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lts;->a(Lts;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "create upload size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->d(Lts;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->b(Lts;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error--->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v2, 0xfa0

    .line 75
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;

    .line 1078
    if-eqz p1, :cond_1

    .line 1080
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->getCode()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->getCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1081
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_1

    .line 1083
    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->a(Lts;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;)V

    .line 1093
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->getUploadid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1094
    iget-object v0, p0, Lts$1;->b:Lts;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->getUploadid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lts;->a(Lts;Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    iget-object v0, p0, Lts$1;->a:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->b(Lts;)J

    move-result-wide v2

    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->c(Lts;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateUploadId(JLjava/lang/String;)Z

    .line 75
    :cond_2
    return-void

    .line 1085
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadIdResult;->getCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 1087
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v0

    .line 1088
    if-eqz v0, :cond_1

    .line 1089
    iget-object v1, p0, Lts$1;->b:Lts;

    invoke-static {v1}, Lts;->a(Lts;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(ILjava/lang/String;)V

    goto :goto_0
.end method
