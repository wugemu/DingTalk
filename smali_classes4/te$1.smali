.class final Lte$1;
.super Ljava/lang/Object;
.source "UploadAvatarTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lte;->c()Z
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
        "Lcom/alibaba/alimei/restfulapi/response/data/AvatarUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lte;


# direct methods
.method constructor <init>(Lte;)V
    .locals 0
    .param p1, "this$0"    # Lte;

    .prologue
    .line 38
    iput-object p1, p0, Lte$1;->a:Lte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)V
    .locals 3
    .param p0, "status"    # I

    .prologue
    .line 68
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    const-string/jumbo v1, "basic_UpdateUserAvatar"

    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lya;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lte$1;->a:Lte;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lte;->a(Lte;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 63
    const-string/jumbo v0, "sync upload contact network error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v0, 0x2

    invoke-static {v0}, Lte$1;->a(I)V

    .line 65
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lte$1;->a:Lte;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lte;->a(Lte;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 56
    const-string/jumbo v0, "sync upload contact service error--->>"

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v0, 0x2

    invoke-static {v0}, Lte$1;->a(I)V

    .line 58
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AvatarUploadResult;

    .line 1041
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AvatarUploadResult;->getFileId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    const/4 v0, 0x1

    invoke-static {v0}, Lte$1;->a(I)V

    :goto_0
    return-void

    .line 1044
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lte$1;->a(I)V

    goto :goto_0
.end method
