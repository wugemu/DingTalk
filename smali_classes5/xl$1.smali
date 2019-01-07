.class final Lxl$1;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->a(ZLjava/lang/String;Ljava/lang/String;ZLxv;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lxl;


# direct methods
.method constructor <init>(Lxl;ZLjava/lang/String;ZZLjava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lxl;

    .prologue
    .line 122
    iput-object p1, p0, Lxl$1;->g:Lxl;

    iput-boolean p2, p0, Lxl$1;->a:Z

    iput-object p3, p0, Lxl$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lxl$1;->c:Z

    iput-boolean p5, p0, Lxl$1;->d:Z

    iput-object p6, p0, Lxl$1;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lxl$1;->f:Z

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 125
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 128
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    iget-boolean v5, p0, Lxl$1;->a:Z

    if-eqz v5, :cond_1

    .line 129
    iget-object v5, p0, Lxl$1;->g:Lxl;

    invoke-static {v5}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v2

    .line 130
    .local v2, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    if-nez v2, :cond_0

    move v3, v4

    .line 133
    .local v3, "hasAccountLogin":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 134
    const-string/jumbo v4, "hasAccountLogin == true"

    invoke-static {v4}, Lyx;->b(Ljava/lang/String;)I

    .line 135
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountHasLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 222
    .end local v2    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .end local v3    # "hasAccountLogin":Z
    :goto_1
    return-object v0

    .line 130
    .restart local v2    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :cond_0
    iget-object v5, p0, Lxl$1;->b:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->hasLogin(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 140
    .end local v2    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    :cond_1
    new-instance v1, Lxl$1$1;

    invoke-direct {v1, p0, v0}, Lxl$1$1;-><init>(Lxl$1;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 182
    .local v1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v5

    iget-object v6, p0, Lxl$1;->b:Ljava/lang/String;

    new-instance v7, Lxl$1$2;

    invoke-direct {v7, p0, v1}, Lxl$1$2;-><init>(Lxl$1;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    invoke-interface {v5, v4, v6, v7}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->apiLocation(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_1
.end method
