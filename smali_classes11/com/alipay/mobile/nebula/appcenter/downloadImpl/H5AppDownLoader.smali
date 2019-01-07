.class public Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;
.super Ljava/lang/Object;
.source "H5AppDownLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5AppLoader"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

.field private downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/util/List;)V
    .locals 1
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "listener":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadUrl:Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method

.method private downLoadFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 107
    .local v0, "h5DownloadCallback":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "h5DownloadCallback":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->unRegisterCallbacks(Ljava/lang/String;)V

    .line 111
    :cond_1
    return-void
.end method

.method private downLoadSuc(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 117
    .local v0, "h5DownloadCallback":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "h5DownloadCallback":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->unRegisterCallbacks(Ljava/lang/String;)V

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v12, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    if-nez v12, :cond_1

    .line 43
    const-string/jumbo v12, "downloadRequest == null"

    invoke-direct {p0, v12}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v12, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 48
    const-string/jumbo v12, "downloadRequest.getDownloadUrl() == null"

    invoke-direct {p0, v12}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v12, "H5AppLoader"

    const-string/jumbo v13, "downloadRequest.getDownloadUrl() == null"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string/jumbo v12, "H5AppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "download app "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .local v11, "urlPattern":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 56
    .local v2, "conn":Ljava/net/URLConnection;
    const/16 v12, 0x2710

    invoke-virtual {v2, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 57
    const/16 v12, 0x2710

    invoke-virtual {v2, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 58
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 60
    .local v10, "inputStream":Ljava/io/InputStream;
    iget-object v12, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string/jumbo v12, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 62
    :cond_3
    iget-object v12, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v12}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 63
    invoke-virtual {v13}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 62
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 68
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "downloadDir":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "filePath":Ljava/lang/String;
    const-string/jumbo v12, "H5AppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "path:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 73
    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadSuc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 97
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "downloadDir":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "urlPattern":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 98
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "H5AppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "download app exception."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v2    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "urlPattern":Ljava/net/URL;
    :cond_4
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 77
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "downloadDir":Ljava/lang/String;
    .restart local v7    # "filePath":Ljava/lang/String;
    :cond_5
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 81
    .local v0, "buffer":[B
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "byteRead":I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_6

    .line 84
    const/4 v12, 0x0

    invoke-virtual {v9, v0, v12, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 87
    .end local v1    # "byteRead":I
    :catch_1
    move-exception v5

    move-object v8, v9

    .line 88
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    const-string/jumbo v12, "H5AppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "input error"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :try_start_5
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 92
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 86
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "byteRead":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    :try_start_6
    invoke-direct {p0, v7}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadSuc(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 91
    :try_start_7
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 92
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 91
    .end local v1    # "byteRead":I
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v12

    :goto_4
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 92
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v12
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 91
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 87
    :catch_2
    move-exception v5

    goto :goto_3
.end method
