.class public interface abstract Lcom/alipay/android/h5appmanager/transport/IRequest;
.super Ljava/lang/Object;
.source "IRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/h5appmanager/transport/IRequest$METHOD;,
        Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;
    }
.end annotation


# virtual methods
.method public abstract cancel(Z)Z
.end method

.method public abstract canceled()Z
.end method

.method public abstract setResponseReceiver(Lcom/alipay/android/h5appmanager/transport/IResponseListener;)Lcom/alipay/android/h5appmanager/transport/IRequest;
.end method

.method public abstract start()V
.end method
