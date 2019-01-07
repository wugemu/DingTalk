.class public interface abstract Lcom/alibaba/doraemon/request/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field public static final ERROR_AUTHFAIL:Ljava/lang/String; = "authfail"

.field public static final ERROR_IO:Ljava/lang/String; = "io_error"

.field public static final ERROR_MALFORMEDURL:Ljava/lang/String; = "malformedurl"

.field public static final ERROR_SERVERERR:Ljava/lang/String; = "server_error"

.field public static final ERROR_TIMEOUT:Ljava/lang/String; = "timeout"


# virtual methods
.method public abstract clone()Lcom/alibaba/doraemon/request/Response;
.end method

.method public abstract dataLength()J
.end method

.method public abstract getErrorDescription()Ljava/lang/String;
.end method

.method public abstract getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
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

.method public abstract getStatusCode()I
.end method

.method public abstract isSuccess()Z
.end method
