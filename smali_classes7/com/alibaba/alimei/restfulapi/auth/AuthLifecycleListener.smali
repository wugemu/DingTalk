.class public interface abstract Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;
.super Ljava/lang/Object;
.source "AuthLifecycleListener.java"


# virtual methods
.method public abstract onAccessTokenExpired(ILjava/lang/String;)V
.end method

.method public abstract onAccessTokenExpired(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAccessTokenExpired(Ljava/lang/String;)V
.end method

.method public abstract onAccessTokenExpired(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAccessTokenInvalid(ILjava/lang/String;)V
.end method

.method public abstract onAccessTokenInvalid(ILjava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAccessTokenInvalid(Ljava/lang/String;)V
.end method

.method public abstract onAccessTokenInvalid(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/restfulapi/RPCListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAccountNotLogin(Ljava/lang/String;)V
.end method
