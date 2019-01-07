.class public interface abstract Lcom/alipay/android/phone/mrpc/core/Config;
.super Ljava/lang/Object;
.source "Config.java"


# virtual methods
.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getRpcParams()Lcom/alipay/android/phone/mrpc/core/RpcParams;
.end method

.method public abstract getTransport()Lcom/alipay/android/phone/mrpc/core/Transport;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isGzip()Z
.end method

.method public abstract sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
