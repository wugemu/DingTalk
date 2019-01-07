.class final Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;
.super Ljava/lang/Object;
.source "AutoResourceDownloadWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/PipedOutputStream;

.field final synthetic d:Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;Ljava/lang/String;Ljava/lang/String;Ljava/io/PipedOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->d:Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 115
    const/4 v5, 0x0

    .line 117
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->a:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    .local v7, "realUrl":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 121
    .local v1, "conn":Ljava/net/URLConnection;
    const-string/jumbo v9, "accept"

    const-string/jumbo v10, "*/*"

    invoke-virtual {v1, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v9, "connection"

    const-string/jumbo v10, "Keep-Alive"

    invoke-virtual {v1, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v9, "user-agent"

    const-string/jumbo v10, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)"

    invoke-virtual {v1, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 127
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 128
    .local v4, "inputStream":Ljava/io/InputStream;
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->b:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 129
    .local v8, "tempFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v9, 0x1000

    :try_start_1
    new-array v0, v9, [B

    .line 132
    .local v0, "bytes":[B
    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x1000

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "count":I
    if-lez v2, :cond_2

    .line 133
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v2}, Ljava/io/PipedOutputStream;->write([BII)V

    .line 134
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 138
    .end local v0    # "bytes":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 139
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "realUrl":Ljava/net/URL;
    .end local v8    # "tempFile":Ljava/io/File;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 140
    const-string/jumbo v9, "AutoResourceDownloadWebViewClient"

    invoke-static {v9, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    if-eqz v5, :cond_0

    .line 153
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 159
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    if-eqz v9, :cond_1

    .line 161
    :try_start_4
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    invoke-virtual {v9}, Ljava/io/PipedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 167
    :cond_1
    :goto_3
    return-void

    .line 137
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v2    # "count":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "realUrl":Ljava/net/URL;
    .restart local v8    # "tempFile":Ljava/io/File;
    :cond_2
    :try_start_5
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->b:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 153
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 159
    :goto_4
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    if-eqz v9, :cond_7

    .line 161
    :try_start_7
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    invoke-virtual {v9}, Ljava/io/PipedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v5, v6

    .line 164
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 154
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 155
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 163
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 164
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 154
    .end local v0    # "bytes":[B
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "count":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "realUrl":Ljava/net/URL;
    .end local v8    # "tempFile":Ljava/io/File;
    .local v3, "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v3

    .line 155
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 163
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 142
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 143
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    const-string/jumbo v9, "AutoResourceDownloadWebViewClient"

    invoke-static {v9, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 151
    if-eqz v5, :cond_3

    .line 153
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 159
    :cond_3
    :goto_6
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    if-eqz v9, :cond_1

    .line 161
    :try_start_a
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    invoke-virtual {v9}, Ljava/io/PipedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 162
    :catch_6
    move-exception v3

    .line 163
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 154
    :catch_7
    move-exception v3

    .line 155
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 146
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const-string/jumbo v9, "AutoResourceDownloadWebViewClient"

    invoke-static {v9, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 151
    if-eqz v5, :cond_4

    .line 153
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 159
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_8
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    if-eqz v9, :cond_1

    .line 161
    :try_start_d
    iget-object v9, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    invoke-virtual {v9}, Ljava/io/PipedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_3

    .line 162
    :catch_9
    move-exception v3

    .line 163
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 154
    .local v3, "e":Ljava/lang/Exception;
    :catch_a
    move-exception v3

    .line 155
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_9
    if-eqz v5, :cond_5

    .line 153
    :try_start_e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 159
    :cond_5
    :goto_a
    iget-object v10, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    if-eqz v10, :cond_6

    .line 161
    :try_start_f
    iget-object v10, p0, Lcom/alibaba/alimei/mail/webview/AutoResourceDownloadWebViewClient$1;->c:Ljava/io/PipedOutputStream;

    invoke-virtual {v10}, Ljava/io/PipedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 164
    :cond_6
    :goto_b
    throw v9

    .line 154
    :catch_b
    move-exception v3

    .line 155
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v3

    .line 163
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "realUrl":Ljava/net/URL;
    .restart local v8    # "tempFile":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_9

    .line 146
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_d
    move-exception v3

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_7

    .line 142
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_e
    move-exception v3

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 138
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "realUrl":Ljava/net/URL;
    .end local v8    # "tempFile":Ljava/io/File;
    :catch_f
    move-exception v3

    goto/16 :goto_1

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v2    # "count":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "realUrl":Ljava/net/URL;
    .restart local v8    # "tempFile":Ljava/io/File;
    :cond_7
    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_3
.end method
