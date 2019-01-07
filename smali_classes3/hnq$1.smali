.class final Lhnq$1;
.super Ljava/lang/Object;
.source "MiniAppExternalDownloadManagerImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhnq;->addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

.field final synthetic c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

.field final synthetic d:Lhnq;


# direct methods
.method constructor <init>(Lhnq;JLcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 0
    .param p1, "this$0"    # Lhnq;

    .prologue
    .line 91
    iput-object p1, p0, Lhnq$1;->d:Lhnq;

    iput-wide p2, p0, Lhnq$1;->a:J

    iput-object p4, p0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    iput-object p5, p0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 172
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 22
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lhnq$1;->a:J

    move-wide/from16 v20, v0

    sub-long v6, v4, v20

    .line 95
    .local v6, "downloadTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lhnq$1;->a:J

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappDownLoadTime(Ljava/lang/String;J)V

    .line 96
    if-eqz p2, :cond_a

    .line 97
    const-string/jumbo v3, "MiniAppExternalDownloadManagerImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "onRequestFinsh code==>"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1093
    const-string/jumbo v5, "mini_data"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_8

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, "fileName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 105
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 106
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "downloadDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    const-string/jumbo v3, "MiniAppExternalDownloadManagerImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "onRequestFinsh file exists and path==>"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    invoke-static {v3, v4}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v3, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3, v4, v15}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->d:Lhnq;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-static/range {v3 .. v8}, Lhnq;->a(Lhnq;Ljava/lang/String;ZJLcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 163
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "downloadDir":Ljava/lang/String;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 103
    .restart local v14    # "fileName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 116
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v11    # "downloadDir":Ljava/lang/String;
    .restart local v15    # "filePath":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v18

    .line 117
    .local v18, "inputStream":Ljava/io/InputStream;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    const/16 v16, 0x0

    .line 119
    .local v16, "fos":Ljava/io/FileOutputStream;
    const/16 v3, 0x400

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 121
    .local v2, "buffer":[B
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "byteRead":I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_5

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 131
    .end local v9    # "byteRead":I
    :catch_0
    move-exception v12

    move-object/from16 v16, v17

    .line 132
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v3, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    const/16 v5, 0x1a0a

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "download failed, parse error msg=>"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v8}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 136
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->d:Lhnq;

    const/16 v4, 0x3ec

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onRequestFinsh fail and reason="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v19, v0

    .line 136
    move-object/from16 v0, v19

    invoke-static {v3, v4, v5, v8, v0}, Lhnq;->a(Lhnq;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 140
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v13, "file":Ljava/io/File;
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    const-string/jumbo v3, "MiniAppExternalDownloadManagerImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "onRequestFinsh package size==>"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 126
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "file":Ljava/io/File;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "byteRead":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_3
    const-string/jumbo v3, "MiniAppExternalDownloadManagerImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "onRequestFinsh download and path==>"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    invoke-static {v3, v4}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v3, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3, v4, v15}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 130
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->d:Lhnq;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    invoke-static/range {v3 .. v8}, Lhnq;->a(Lhnq;Ljava/lang/String;ZJLcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 140
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v13    # "file":Ljava/io/File;
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    const-string/jumbo v3, "MiniAppExternalDownloadManagerImpl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "onRequestFinsh package size==>"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 139
    .end local v9    # "byteRead":I
    .end local v13    # "file":Ljava/io/File;
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_4
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 140
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v13    # "file":Ljava/io/File;
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 145
    const-string/jumbo v4, "MiniAppExternalDownloadManagerImpl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v19, "onRequestFinsh package size==>"

    aput-object v19, v5, v8

    const/4 v8, 0x1

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v8

    invoke-static {v4, v5}, Lhmv;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_7
    throw v3

    .line 150
    .end local v2    # "buffer":[B
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "downloadDir":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "filePath":Ljava/lang/String;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "inputStream":Ljava/io/InputStream;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v3, :cond_9

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    const/16 v5, 0x1e61

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "download failed, status code=>"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v8}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 153
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->d:Lhnq;

    const/16 v4, 0x3ed

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "status code="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v19, v0

    .line 153
    move-object/from16 v0, v19

    invoke-static {v3, v4, v5, v8, v0}, Lhnq;->a(Lhnq;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto/16 :goto_1

    .line 157
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    if-eqz v3, :cond_b

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    const/16 v5, 0x22b8

    const-string/jumbo v8, "download failed,response is null"

    invoke-virtual {v3, v4, v5, v8}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 160
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lhnq$1;->d:Lhnq;

    const/16 v4, 0x3ee

    const-string/jumbo v5, "response is null"

    move-object/from16 v0, p0

    iget-object v8, v0, Lhnq$1;->b:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 161
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lhnq$1;->c:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    move-object/from16 v19, v0

    .line 160
    move-object/from16 v0, v19

    invoke-static {v3, v4, v5, v8, v0}, Lhnq;->a(Lhnq;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto/16 :goto_1

    .line 139
    .restart local v2    # "buffer":[B
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v11    # "downloadDir":Ljava/lang/String;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v15    # "filePath":Ljava/lang/String;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 131
    :catch_1
    move-exception v12

    goto/16 :goto_3
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 167
    return-void
.end method
