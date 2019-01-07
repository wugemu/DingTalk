.class public interface abstract Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
.super Ljava/lang/Object;
.source "RpcCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
.end method

.method public abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
