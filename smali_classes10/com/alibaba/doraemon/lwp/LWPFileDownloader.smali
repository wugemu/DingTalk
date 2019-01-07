.class public interface abstract Lcom/alibaba/doraemon/lwp/LWPFileDownloader;
.super Ljava/lang/Object;
.source "LWPFileDownloader.java"


# static fields
.field public static final LWP_FILE_DOWNLOADER_ARTIFACT:Ljava/lang/String; = "LWPFILEDOWNLOADER"


# virtual methods
.method public abstract download(Ljava/lang/String;JJZLjava/util/Map;Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract download(Ljava/lang/String;Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;)V
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method
