.class public interface abstract Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/file/download/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onException(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFinish(Lcom/laiwang/protocol/file/download/FileSegment;)V
.end method

.method public abstract onProgress(Lcom/laiwang/protocol/file/download/FileSegment;I)V
.end method
