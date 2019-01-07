.class public abstract Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AutoResourceDownloadWebViewClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    const/4 v8, 0x0

    .line 63
    .local v8, "response":Landroid/webkit/WebResourceResponse;
    if-eqz p1, :cond_7

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 69
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    move-object/from16 v7, p1

    .local v7, "resUrl":Ljava/lang/String;
    const-string/jumbo v13, "cid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 72
    const/4 v13, 0x0

    .line 182
    .end local v7    # "resUrl":Ljava/lang/String;
    :goto_0
    return-object v13

    .line 76
    .restart local v7    # "resUrl":Ljava/lang/String;
    :cond_0
    move-object v6, v7

    .line 1019
    .local v6, "realResourceUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1020
    const/4 v13, 0x0

    .line 76
    :goto_1
    if-eqz v13, :cond_7

    .line 79
    const-string/jumbo v13, ".png"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 80
    const-string/jumbo v11, ".png"

    .line 81
    .local v11, "style":Ljava/lang/String;
    const-string/jumbo v4, "image/png"

    .line 1226
    .local v4, "mimeType":Ljava/lang/String;
    :goto_2
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laeu;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Laev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    .line 96
    if-eqz v13, :cond_6

    .line 98
    invoke-static {v6, v4, v11}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v13

    goto :goto_0

    .line 1023
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v11    # "style":Ljava/lang/String;
    :cond_1
    const-string/jumbo v13, "http"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    goto :goto_1

    .line 82
    :cond_2
    const-string/jumbo v13, ".gif"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 83
    const-string/jumbo v11, ".gif"

    .line 84
    .restart local v11    # "style":Ljava/lang/String;
    const-string/jumbo v4, "image/gif"

    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 85
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v11    # "style":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, ".jpg"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 86
    const-string/jumbo v11, ".jpg"

    .line 87
    .restart local v11    # "style":Ljava/lang/String;
    const-string/jumbo v4, "image/jepg"

    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 88
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v11    # "style":Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, ".jepg"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 89
    const-string/jumbo v11, ".jepg"

    .line 90
    .restart local v11    # "style":Ljava/lang/String;
    const-string/jumbo v4, "image/jepg"

    .restart local v4    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 92
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v11    # "style":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 102
    .restart local v4    # "mimeType":Ljava/lang/String;
    .restart local v11    # "style":Ljava/lang/String;
    :cond_6
    move-object v2, v11

    .line 106
    .local v2, "iStyle":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/PipedOutputStream;

    invoke-direct {v5}, Ljava/io/PipedOutputStream;-><init>()V

    .line 107
    .local v5, "os":Ljava/io/PipedOutputStream;
    new-instance v3, Ljava/io/PipedInputStream;

    invoke-direct {v3, v5}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 108
    .local v3, "in":Ljava/io/PipedInputStream;
    new-instance v9, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v13, "utf-8"

    invoke-direct {v9, v4, v13, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v8    # "response":Landroid/webkit/WebResourceResponse;
    .local v9, "response":Landroid/webkit/WebResourceResponse;
    :try_start_1
    new-instance v10, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v2, v5}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;-><init>(Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;Ljava/lang/String;Ljava/lang/String;Ljava/io/PipedOutputStream;)V

    .line 170
    .local v10, "runnable":Ljava/lang/Runnable;
    sget-object v13, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v13}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v12

    .line 171
    .local v12, "thread":Laie;
    invoke-interface {v12, v10}, Laie;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .end local v2    # "iStyle":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/PipedInputStream;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "os":Ljava/io/PipedOutputStream;
    .end local v6    # "realResourceUrl":Ljava/lang/String;
    .end local v7    # "resUrl":Ljava/lang/String;
    .end local v9    # "response":Landroid/webkit/WebResourceResponse;
    .end local v10    # "runnable":Ljava/lang/Runnable;
    .end local v11    # "style":Ljava/lang/String;
    .end local v12    # "thread":Laie;
    .restart local v8    # "response":Landroid/webkit/WebResourceResponse;
    :cond_7
    :goto_3
    move-object v13, v8

    .line 182
    goto/16 :goto_0

    .line 172
    .restart local v2    # "iStyle":Ljava/lang/String;
    .restart local v4    # "mimeType":Ljava/lang/String;
    .restart local v6    # "realResourceUrl":Ljava/lang/String;
    .restart local v7    # "resUrl":Ljava/lang/String;
    .restart local v11    # "style":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    const-string/jumbo v13, "AutoResourceDownloadWebViewClient"

    invoke-static {v13, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_5
    throw v13

    .end local v8    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v3    # "in":Ljava/io/PipedInputStream;
    .restart local v5    # "os":Ljava/io/PipedOutputStream;
    .restart local v9    # "response":Landroid/webkit/WebResourceResponse;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v8    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_5

    .line 172
    .end local v8    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v9    # "response":Landroid/webkit/WebResourceResponse;
    :catch_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v8    # "response":Landroid/webkit/WebResourceResponse;
    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "response":Landroid/webkit/WebResourceResponse;
    :try_start_0
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v3, "UTF-8"

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laeu;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Laev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, p1, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "response":Landroid/webkit/WebResourceResponse;
    .local v2, "response":Landroid/webkit/WebResourceResponse;
    move-object v1, v2

    .line 212
    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v1    # "response":Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    .line 1236
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laeu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Laev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    .line 2231
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laeu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Laev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 42
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 44
    .local v0, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v0, :cond_0

    .line 49
    .end local v0    # "response":Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 55
    .local v0, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v0, :cond_0

    .line 58
    .end local v0    # "response":Landroid/webkit/WebResourceResponse;
    :goto_0
    return-object v0

    .restart local v0    # "response":Landroid/webkit/WebResourceResponse;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 193
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    goto :goto_0
.end method
