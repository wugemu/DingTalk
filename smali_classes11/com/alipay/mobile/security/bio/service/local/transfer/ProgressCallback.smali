.class public interface abstract Lcom/alipay/mobile/security/bio/service/local/transfer/ProgressCallback;
.super Ljava/lang/Object;
.source "ProgressCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Source:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;TResult;)V"
        }
    .end annotation
.end method

.method public abstract onFinish(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;TResult;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Ljava/lang/Object;IJJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;IJJ)V"
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;)V"
        }
    .end annotation
.end method
