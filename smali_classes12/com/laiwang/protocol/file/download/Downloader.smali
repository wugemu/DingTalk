.class public Lcom/laiwang/protocol/file/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/file/download/Downloader;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public download(Lcom/laiwang/protocol/file/download/FileItem;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V
    .locals 3
    .param p1, "item"    # Lcom/laiwang/protocol/file/download/FileItem;
    .param p2, "listener"    # Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    :cond_0
    const-string/jumbo v1, "[down] down param err"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 46
    if-eqz p2, :cond_1

    .line 47
    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v1}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v2}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    new-instance v0, Lcom/laiwang/protocol/file/b;

    iget-object v1, p0, Lcom/laiwang/protocol/file/download/Downloader;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/laiwang/protocol/file/c;

    invoke-direct {v2, p1}, Lcom/laiwang/protocol/file/c;-><init>(Lcom/laiwang/protocol/file/download/FileItem;)V

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/file/b;-><init>(Landroid/content/Context;Lcom/laiwang/protocol/file/c;)V

    .line 53
    .local v0, "task":Lcom/laiwang/protocol/file/d;
    invoke-virtual {v0, p2}, Lcom/laiwang/protocol/file/d;->a(Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V

    .line 54
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/file/d;->a(Lcom/laiwang/protocol/file/download/FileItem;)V

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string/jumbo v1, "[down] down url is empty"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v1}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v2}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/file/download/FileItem;

    invoke-direct {v0, p1}, Lcom/laiwang/protocol/file/download/FileItem;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "fileItem":Lcom/laiwang/protocol/file/download/FileItem;
    invoke-virtual {p0, v0, p2}, Lcom/laiwang/protocol/file/download/Downloader;->download(Lcom/laiwang/protocol/file/download/FileItem;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V

    goto :goto_0
.end method
