.class public interface abstract Lcom/alipay/android/h5appmanager/transport/IResponse;
.super Ljava/lang/Object;
.source "IResponse.java"


# virtual methods
.method public abstract dataLength()J
.end method

.method public abstract errorDescription()Ljava/lang/String;
.end method

.method public abstract responseBody()Lcom/alipay/android/h5appmanager/transport/IResponseInputStream;
.end method

.method public abstract responseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract responseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract statusCode()I
.end method

.method public abstract success()Z
.end method
