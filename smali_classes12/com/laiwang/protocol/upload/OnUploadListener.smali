.class public interface abstract Lcom/laiwang/protocol/upload/OnUploadListener;
.super Ljava/lang/Object;
.source "OnUploadListener.java"


# virtual methods
.method public abstract onFailed(Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
.end method

.method public abstract onProgress(JJLcom/laiwang/protocol/upload/UploaderExtra;)V
.end method

.method public abstract onSuccess(Lcom/laiwang/protocol/upload/UploadResult;)V
.end method
