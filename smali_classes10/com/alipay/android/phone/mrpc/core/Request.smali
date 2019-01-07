.class public abstract Lcom/alipay/android/phone/mrpc/core/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private cancel:Z

.field protected mCallback:Lcom/alipay/android/phone/mrpc/core/TransportCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/Request;->cancel:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/Request;->cancel:Z

    .line 43
    return-void
.end method

.method public getCallback()Lcom/alipay/android/phone/mrpc/core/TransportCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/Request;->mCallback:Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/Request;->cancel:Z

    return v0
.end method

.method public setTransportCallback(Lcom/alipay/android/phone/mrpc/core/TransportCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/Request;->mCallback:Lcom/alipay/android/phone/mrpc/core/TransportCallback;

    .line 36
    return-void
.end method
