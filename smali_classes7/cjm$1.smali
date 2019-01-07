.class final Lcjm$1;
.super Ljava/lang/Object;
.source "DynamicSoDownloadService.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjl;

.field final synthetic b:Lcjm;

.field private c:Z


# direct methods
.method constructor <init>(Lcjm;Lcjl;)V
    .locals 0
    .param p1, "this$0"    # Lcjm;

    .prologue
    .line 69
    iput-object p1, p0, Lcjm$1;->b:Lcjm;

    iput-object p2, p0, Lcjm$1;->a:Lcjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 4
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 162
    iget-object v0, p0, Lcjm$1;->b:Lcjm;

    iget-object v1, p0, Lcjm$1;->a:Lcjl;

    .line 10063
    iget-object v1, v1, Lcjl;->f:Ljava/lang/String;

    .line 162
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p4

    div-long/2addr v2, p2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcjm;->a(Lcjm;Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 15
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v10, p0, Lcjm$1;->c:Z

    if-eqz v10, :cond_1

    .line 76
    monitor-exit p0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcjm$1;->c:Z

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz p2, :cond_10

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 82
    :try_start_1
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .local v9, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/4 v6, 0x0

    .line 85
    .local v6, "tmp":Ljava/io/File;
    const/4 v4, 0x0

    .line 86
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 88
    .local v0, "buffer":[B
    const/16 v10, 0x400

    :try_start_2
    invoke-static {v10}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 89
    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_7

    .line 90
    const-string/jumbo v10, "data.so"

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 91
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 1063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 91
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .end local v6    # "tmp":Ljava/io/File;
    .local v7, "tmp":Ljava/io/File;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 93
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 95
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 96
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 99
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_6

    .line 102
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 112
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 113
    .end local v7    # "tmp":Ljava/io/File;
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "tmp":Ljava/io/File;
    :goto_2
    :try_start_5
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "decompression fail:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v10, p0, Lcjm$1;->b:Lcjm;

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 3063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 114
    const/4 v12, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lcig$j;->dt_dynamic_so_error_msg_write_error:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcjm;->a(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 119
    if-eqz v4, :cond_5

    .line 120
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 121
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 123
    :cond_5
    if-eqz v0, :cond_0

    .line 124
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 147
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v10, p0, Lcjm$1;->b:Lcjm;

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 8063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 149
    const/4 v12, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lcig$j;->dt_dynamic_so_error_msg_write_error:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcjm;->a(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v10

    .restart local v0    # "buffer":[B
    .restart local v3    # "len":I
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 107
    .end local v3    # "len":I
    .end local v7    # "tmp":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    :cond_7
    if-nez v6, :cond_8

    .line 108
    :try_start_8
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    const-string/jumbo v12, "no named data.so in zip"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v10, p0, Lcjm$1;->b:Lcjm;

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 2063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 109
    const/4 v12, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lcig$j;->dt_dynamic_so_error_msg_write_error:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcjm;->a(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 118
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto/16 :goto_0

    .line 118
    :cond_8
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 120
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 121
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 123
    if-eqz v0, :cond_9

    .line 124
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 127
    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcjm$1;->a:Lcjl;

    .line 4043
    iget-object v10, v10, Lcjl;->b:Ljava/lang/String;

    .line 127
    invoke-static {v6, v10}, Lcna;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 128
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    const-string/jumbo v12, "hash check success"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/io/File;

    iget-object v10, p0, Lcjm$1;->a:Lcjl;

    .line 4063
    iget-object v10, v10, Lcjl;->f:Ljava/lang/String;

    .line 129
    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 133
    :cond_a
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 134
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    const-string/jumbo v12, "rename success"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v10, p0, Lcjm$1;->b:Lcjm;

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 5063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 135
    invoke-static {v10, v11}, Lcjm;->a(Lcjm;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v2    # "f":Ljava/io/File;
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v10

    :goto_3
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 119
    if-eqz v4, :cond_b

    .line 120
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 121
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 123
    :cond_b
    if-eqz v0, :cond_c

    .line 124
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_c
    throw v10

    .line 137
    .restart local v2    # "f":Ljava/io/File;
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_d
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    const-string/jumbo v12, "rename fail"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v10, p0, Lcjm$1;->b:Lcjm;

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 6063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 138
    const/4 v12, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lcig$j;->dt_dynamic_so_error_msg_rename_error:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcjm;->a(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v2    # "f":Ljava/io/File;
    :cond_e
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    const-string/jumbo v12, "hash check fail"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 143
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 145
    :cond_f
    iget-object v10, p0, Lcjm$1;->b:Lcjm;

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 7063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 145
    const/4 v12, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lcig$j;->dt_dynamic_so_error_msg_md5_error:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcjm;->a(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 153
    .end local v0    # "buffer":[B
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v6    # "tmp":Ljava/io/File;
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_10
    const-string/jumbo v10, "dynamic_so"

    const-string/jumbo v11, "download"

    const-string/jumbo v12, "download fail"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v10, p0, Lcjm$1;->b:Lcjm;

    iget-object v11, p0, Lcjm$1;->a:Lcjl;

    .line 9063
    iget-object v11, v11, Lcjl;->f:Ljava/lang/String;

    .line 154
    const/4 v12, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lcig$j;->dt_dynamic_so_error_msg_load_error:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcjm;->a(Lcjm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .restart local v0    # "buffer":[B
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "tmp":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    goto/16 :goto_3

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v6    # "tmp":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "tmp":Ljava/io/File;
    :catchall_3
    move-exception v10

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7    # "tmp":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    goto/16 :goto_3

    .line 112
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v1

    goto/16 :goto_2

    .end local v6    # "tmp":Ljava/io/File;
    .restart local v7    # "tmp":Ljava/io/File;
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v1

    move-object v6, v7

    .end local v7    # "tmp":Ljava/io/File;
    .restart local v6    # "tmp":Ljava/io/File;
    goto/16 :goto_2
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 159
    return-void
.end method
