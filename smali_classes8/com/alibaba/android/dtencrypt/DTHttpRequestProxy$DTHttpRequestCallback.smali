.class public interface abstract Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy$DTHttpRequestCallback;
.super Ljava/lang/Object;
.source "DTHttpRequestProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DTHttpRequestCallback"
.end annotation


# static fields
.field public static final ERROR_CODE_IO_EXCEPTION:I = -0x25b

.field public static final ERROR_CODE_METHOD_UNKNOWN:I = -0x259

.field public static final ERROR_CODE_URL_MALFORMED:I = -0x25a

.field public static final ERROR_MSG_IO_EXCEPTION:Ljava/lang/String; = "io exception"

.field public static final ERROR_MSG_METHOD_UNKNOWN:Ljava/lang/String; = "method unknown"

.field public static final ERROR_MSG_URL_MALFORMED:Ljava/lang/String; = "url malformed"


# virtual methods
.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation
.end method
