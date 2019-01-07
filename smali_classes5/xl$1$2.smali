.class final Lxl$1$2;
.super Ljava/lang/Object;
.source "AccountApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl$1;->execute()Lcom/alibaba/alimei/framework/api/ApiResult;
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
        "Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic b:Lxl$1;


# direct methods
.method constructor <init>(Lxl$1;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$1"    # Lxl$1;

    .prologue
    .line 182
    iput-object p1, p0, Lxl$1$2;->b:Lxl$1;

    iput-object p2, p0, Lxl$1$2;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 6
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 218
    iget-object v0, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v0, v0, Lxl$1;->g:Lxl;

    iget-object v1, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v1, v1, Lxl$1;->d:Z

    iget-object v2, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v2, v2, Lxl$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v3, v3, Lxl$1;->f:Z

    iget-object v4, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v4, v4, Lxl$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lxl$1$2;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-static/range {v0 .. v5}, Lxl;->a(Lxl;ZLjava/lang/String;ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 219
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 6
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v0, v0, Lxl$1;->g:Lxl;

    iget-object v1, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v1, v1, Lxl$1;->d:Z

    iget-object v2, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v2, v2, Lxl$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v3, v3, Lxl$1;->f:Z

    iget-object v4, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v4, v4, Lxl$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lxl$1$2;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-static/range {v0 .. v5}, Lxl;->a(Lxl;ZLjava/lang/String;ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 214
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 182
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;

    .line 1185
    if-nez p1, :cond_0

    .line 1186
    iget-object v0, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v0, v0, Lxl$1;->g:Lxl;

    iget-object v1, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v1, v1, Lxl$1;->d:Z

    iget-object v2, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v2, v2, Lxl$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v3, v3, Lxl$1;->f:Z

    iget-object v4, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v4, v4, Lxl$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lxl$1$2;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-static/range {v0 .. v5}, Lxl;->a(Lxl;ZLjava/lang/String;ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 1187
    :goto_0
    return-void

    .line 1190
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/restfulapi/domain/Domain;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/domain/Domain;-><init>()V

    .line 1191
    iget-object v0, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v0, v0, Lxl$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->setAccountName(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getCore()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->setApiDomain(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getAuth()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->setAuthDomain(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getStream()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->setFileDomain(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getPreview()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->setPreviewDomain(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getWeb()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_5
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->setWebmailDomain(Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getInstance()Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->insertOrUpdateDomainInfo(Lcom/alibaba/alimei/restfulapi/domain/Domain;)V

    .line 1201
    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValues(Lcom/alibaba/alimei/restfulapi/domain/Domain;)V

    .line 1203
    iget-object v0, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v0, v0, Lxl$1;->g:Lxl;

    iget-object v1, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v1, v1, Lxl$1;->d:Z

    iget-object v2, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v2, v2, Lxl$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lxl$1$2;->b:Lxl$1;

    iget-boolean v3, v3, Lxl$1;->f:Z

    iget-object v4, p0, Lxl$1$2;->b:Lxl$1;

    iget-object v4, v4, Lxl$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lxl$1$2;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-static/range {v0 .. v5}, Lxl;->a(Lxl;ZLjava/lang/String;ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    goto :goto_0

    .line 1192
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getCore()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1193
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getAuth()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1194
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getStream()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1195
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getPreview()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1197
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;->getWeb()Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
