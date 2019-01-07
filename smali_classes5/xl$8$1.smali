.class final Lxl$8$1;
.super Ljava/lang/Object;
.source "AccountApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl$8;->execute()Lcom/alibaba/alimei/framework/api/ApiResult;
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
        "Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic b:Lxl$8;


# direct methods
.method constructor <init>(Lxl$8;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lxl$8;

    .prologue
    .line 740
    iput-object p1, p0, Lxl$8$1;->b:Lxl$8;

    iput-object p2, p0, Lxl$8$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 760
    iget-object v0, p0, Lxl$8$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 761
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 740
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 755
    iget-object v0, p0, Lxl$8$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 756
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 740
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;

    .line 1744
    new-instance v0, Lcom/alibaba/alimei/framework/model/WebTokenModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/model/WebTokenModel;-><init>()V

    .line 1745
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/framework/model/WebTokenModel;->setExpireTime(J)V

    .line 1746
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;->getWebToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/model/WebTokenModel;->setWebToken(Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lxl$8$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v0, v1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 740
    return-void
.end method
