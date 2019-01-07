.class public interface abstract Lcom/ali/user/open/core/service/RpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract logout()V
.end method

.method public abstract registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remoteBusiness(Lcom/ali/user/open/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ali/user/open/core/model/RpcRequest;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;",
            ")V"
        }
    .end annotation
.end method
