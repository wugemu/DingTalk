.class public Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;
.super Ljava/lang/Object;
.source "LWPFileDownloaderImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/lwp/LWPFileDownloader;


# instance fields
.field private mDownloader:Lcom/laiwang/protocol/file/download/Downloader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/laiwang/protocol/file/download/Downloader;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/protocol/file/download/Downloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;->mDownloader:Lcom/laiwang/protocol/file/download/Downloader;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;Lcom/laiwang/protocol/file/download/FileSegment;)Lcom/alibaba/doraemon/lwp/LWPFileSegment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;
    .param p1, "x1"    # Lcom/laiwang/protocol/file/download/FileSegment;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;->transferFileSegment(Lcom/laiwang/protocol/file/download/FileSegment;)Lcom/alibaba/doraemon/lwp/LWPFileSegment;

    move-result-object v0

    return-object v0
.end method

.method private transferFileSegment(Lcom/laiwang/protocol/file/download/FileSegment;)Lcom/alibaba/doraemon/lwp/LWPFileSegment;
    .locals 1
    .param p1, "fileSegment"    # Lcom/laiwang/protocol/file/download/FileSegment;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$3;-><init>(Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;Lcom/laiwang/protocol/file/download/FileSegment;)V

    goto :goto_0
.end method


# virtual methods
.method public download(Ljava/lang/String;JJZLjava/util/Map;Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "isLarge"    # Z
    .param p8, "listener"    # Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;
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

    .prologue
    .line 61
    .local p7, "authInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/laiwang/protocol/file/download/FileItem;

    invoke-direct {v0, p1}, Lcom/laiwang/protocol/file/download/FileItem;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "fileItem":Lcom/laiwang/protocol/file/download/FileItem;
    invoke-virtual {v0, p2, p3}, Lcom/laiwang/protocol/file/download/FileItem;->setStart(J)V

    .line 63
    invoke-virtual {v0, p4, p5}, Lcom/laiwang/protocol/file/download/FileItem;->setEnd(J)V

    .line 64
    invoke-virtual {v0, p6}, Lcom/laiwang/protocol/file/download/FileItem;->setLarge(Z)V

    .line 65
    invoke-virtual {v0, p7}, Lcom/laiwang/protocol/file/download/FileItem;->setAuthInfo(Ljava/util/Map;)V

    .line 67
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;->mDownloader:Lcom/laiwang/protocol/file/download/Downloader;

    new-instance v2, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$2;

    invoke-direct {v2, p0, p8}, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$2;-><init>(Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/laiwang/protocol/file/download/Downloader;->download(Lcom/laiwang/protocol/file/download/FileItem;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V

    .line 90
    return-void
.end method

.method public download(Ljava/lang/String;Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;->mDownloader:Lcom/laiwang/protocol/file/download/Downloader;

    new-instance v1, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl$1;-><init>(Lcom/alibaba/doraemon/impl/lwp/LWPFileDownloaderImpl;Lcom/alibaba/doraemon/lwp/LWPFileDownloadListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/laiwang/protocol/file/download/Downloader;->download(Ljava/lang/String;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V

    .line 52
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
