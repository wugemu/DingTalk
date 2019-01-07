.class final Lxl$1$1;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic b:Lxl$1;

.field private c:Lcom/alibaba/alimei/framework/model/UserAccountModel;


# direct methods
.method constructor <init>(Lxl$1;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lxl$1;

    .prologue
    .line 140
    iput-object p1, p0, Lxl$1$1;->b:Lxl$1;

    iput-object p2, p0, Lxl$1$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 178
    iget-object v0, p0, Lxl$1$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 179
    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 169
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lxl$1$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 174
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 145
    move-object v1, p1

    check-cast v1, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 146
    .local v1, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    iget-object v4, p0, Lxl$1$1;->b:Lxl$1;

    iget-object v4, v4, Lxl$1;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v1, Lcom/alibaba/alimei/framework/db/HostAuth;->login:Ljava/lang/String;

    .line 147
    .local v3, "tempAccountName":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lxl$1$1;->b:Lxl$1;

    iget-object v4, v4, Lxl$1;->g:Lxl;

    invoke-static {v4}, Lxl;->a(Lxl;)Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v0

    .line 148
    .local v0, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v4, "ds == null ?"

    aput-object v4, v7, v6

    if-nez v0, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->b(Ljava/lang/String;)I

    .line 150
    iget-object v4, p0, Lxl$1$1;->b:Lxl$1;

    iget-boolean v4, v4, Lxl$1;->c:Z

    invoke-interface {v0, v3, v4, v1}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->insertAccountWithHostAuth(Ljava/lang/String;ZLcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    iput-object v4, p0, Lxl$1$1;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 151
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v7, "mUserAccount == null ?"

    aput-object v7, v4, v6

    iget-object v7, p0, Lxl$1$1;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v7, :cond_0

    move v6, v5

    .line 152
    :cond_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 151
    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->b(Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lxl$1$1;->a:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v5, p0, Lxl$1$1;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object v5, v4, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 157
    iget-object v4, p0, Lxl$1$1;->b:Lxl$1;

    iget-boolean v4, v4, Lxl$1;->c:Z

    if-eqz v4, :cond_1

    .line 158
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    .line 159
    .local v2, "store":Lxz;
    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v2}, Lxz;->b()V

    .line 164
    .end local v2    # "store":Lxz;
    :cond_1
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v4

    iget-object v5, p0, Lxl$1$1;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4, v5}, Lxr;->a(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 165
    return-void

    .line 146
    .end local v0    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .end local v3    # "tempAccountName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lxl$1$1;->b:Lxl$1;

    iget-object v3, v4, Lxl$1;->b:Ljava/lang/String;

    goto :goto_0

    .restart local v0    # "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .restart local v3    # "tempAccountName":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 148
    goto :goto_1
.end method
