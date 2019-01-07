.class public interface abstract Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/upload/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFileUploadListener"
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
.end method

.method public abstract onSuccess(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUploadProcess(Lcom/laiwang/protocol/upload/UploaderExtra;II)V
.end method
