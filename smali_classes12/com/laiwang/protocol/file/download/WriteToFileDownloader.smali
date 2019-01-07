.class public Lcom/laiwang/protocol/file/download/WriteToFileDownloader;
.super Lcom/laiwang/protocol/file/download/Downloader;
.source "WriteToFileDownloader.java"


# instance fields
.field private volatile mInited:Z

.field private mRootDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootDir"    # Ljava/io/File;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/file/download/Downloader;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mInited:Z

    .line 37
    invoke-direct {p0, p2}, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->initRootDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mRootDir:Ljava/io/File;

    .line 38
    return-void
.end method

.method private createDownloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fileExt"    # Ljava/lang/String;
    .param p4, "num"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    :goto_0
    if-lez p4, :cond_0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "fileName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "destFile":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 103
    .restart local v0    # "destFile":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    .end local v0    # "destFile":Ljava/io/File;
    :goto_2
    return-object v0

    .line 106
    .restart local v0    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private createRootDir()Ljava/io/File;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/files/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "rootDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v1

    .line 150
    :goto_0
    return-object v3

    .line 140
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "rootDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "rootDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initRootDir(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 115
    if-nez p1, :cond_2

    .line 116
    invoke-direct {p0}, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->createRootDir()Ljava/io/File;

    move-result-object p1

    .line 120
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    :cond_1
    :goto_1
    return-object p1

    .line 117
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 123
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mInited:Z

    goto :goto_1
.end method


# virtual methods
.method public download(Lcom/laiwang/protocol/file/download/FileItem;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V
    .locals 8
    .param p1, "item"    # Lcom/laiwang/protocol/file/download/FileItem;
    .param p2, "listener"    # Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    :cond_0
    const-string/jumbo v3, "[down] down param err"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 53
    if-eqz p2, :cond_1

    .line 54
    sget-object v3, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v3}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v4}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-boolean v3, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mInited:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mRootDir:Ljava/io/File;

    if-nez v3, :cond_4

    .line 59
    :cond_3
    const-string/jumbo v3, "[down] init down dir err"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 60
    if-eqz p2, :cond_1

    .line 61
    sget-object v3, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v3}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v4}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/laiwang/protocol/file/download/FileItem;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mRootDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "down"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/laiwang/protocol/file/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->createDownloadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .local v0, "destFile":Ljava/io/File;
    if-nez v0, :cond_5

    .line 70
    const-string/jumbo v3, "[down] create down file err"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 71
    if-eqz p2, :cond_1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v4}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v4}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_5
    :try_start_0
    new-instance v1, Lcom/laiwang/protocol/file/b;

    iget-object v3, p0, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/laiwang/protocol/file/e;

    invoke-direct {v4, p1, v0}, Lcom/laiwang/protocol/file/e;-><init>(Lcom/laiwang/protocol/file/download/FileItem;Ljava/io/File;)V

    invoke-direct {v1, v3, v4}, Lcom/laiwang/protocol/file/b;-><init>(Landroid/content/Context;Lcom/laiwang/protocol/file/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v1, "task":Lcom/laiwang/protocol/file/d;
    invoke-virtual {v1, p2}, Lcom/laiwang/protocol/file/d;->a(Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V

    .line 86
    invoke-virtual {v1, p1}, Lcom/laiwang/protocol/file/d;->a(Lcom/laiwang/protocol/file/download/FileItem;)V

    goto/16 :goto_0

    .line 80
    .end local v1    # "task":Lcom/laiwang/protocol/file/d;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "[down] down file unaccessible"

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 81
    if-eqz p2, :cond_1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v4}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v4}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public download(Ljava/lang/String;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "[down] down url is empty"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v0}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v1}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/file/download/FileItem;

    invoke-direct {v0, p1}, Lcom/laiwang/protocol/file/download/FileItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/laiwang/protocol/file/download/WriteToFileDownloader;->download(Lcom/laiwang/protocol/file/download/FileItem;Lcom/laiwang/protocol/file/download/Downloader$DownloadListener;)V

    goto :goto_0
.end method
