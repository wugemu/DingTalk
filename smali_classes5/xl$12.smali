.class final Lxl$12;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->refreshToken(Ljava/lang/String;Lxv;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lxl;


# direct methods
.method constructor <init>(Lxl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lxl;

    .prologue
    .line 248
    iput-object p1, p0, Lxl$12;->b:Lxl;

    iput-object p2, p0, Lxl$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 251
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 252
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    iget-object v3, p0, Lxl$12;->b:Lxl;

    invoke-static {v3}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v2

    .line 255
    .local v2, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    iget-object v3, p0, Lxl$12;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->hasLogin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    new-instance v1, Lxl$12$1;

    invoke-direct {v1, p0, v0}, Lxl$12$1;-><init>(Lxl$12;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 277
    .local v1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lxl$12;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->refreshToken(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 281
    .end local v1    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    .line 279
    :cond_0
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method
