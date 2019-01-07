.class Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;
.super Ljava/lang/Object;
.source "DefaultAuthProvider.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->refreshToken(ZLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
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
        "Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mStoreObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->this$0:Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->mStoreObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 1
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->mStoreObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onPostExecute(Ljava/lang/Object;)V

    .line 267
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->onPostExecute(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 1
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->this$0:Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;->access$000(Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;)Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$accountName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/alimei/restfulapi/auth/AuthStore;->storeRefreshAuth(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->mStoreObject:Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->mStoreObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 260
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider$4;->onSuccess(Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)V

    return-void
.end method
