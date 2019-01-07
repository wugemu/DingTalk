.class public interface abstract Lcom/alipay/android/phone/mrpc/core/TransportCallback;
.super Ljava/lang/Object;
.source "TransportCallback.java"


# virtual methods
.method public abstract onCancelled(Lcom/alipay/android/phone/mrpc/core/Request;)V
.end method

.method public abstract onFailed(Lcom/alipay/android/phone/mrpc/core/Request;ILjava/lang/String;)V
.end method

.method public abstract onPostExecute(Lcom/alipay/android/phone/mrpc/core/Request;Lcom/alipay/android/phone/mrpc/core/Response;)V
.end method

.method public abstract onPreExecute(Lcom/alipay/android/phone/mrpc/core/Request;)V
.end method

.method public abstract onProgressUpdate(Lcom/alipay/android/phone/mrpc/core/Request;D)V
.end method
