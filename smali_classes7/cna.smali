.class public final Lcna;
.super Ljava/lang/Object;
.source "FileTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "ins"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 35
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 39
    .local v0, "buffer":[B
    const/16 v3, 0x2000

    :try_start_0
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 41
    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 42
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 46
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 47
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 50
    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 51
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 32
    .end local v0    # "buffer":[B
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 44
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-eqz v0, :cond_6

    .line 47
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 50
    :cond_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 51
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 58
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1067
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v4, "MD5"

    invoke-static {v1, v4}, Lcoh;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "newMd5":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "newMd5":Ljava/lang/String;
    :goto_0
    return v3

    .line 64
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "newMd5":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 65
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "newMd5":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "sha256"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 73
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1077
    .local v1, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v4, "SHA-256"

    invoke-static {v1, v4}, Lcoh;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "newSha256":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "newSha256":Ljava/lang/String;
    :goto_0
    return v3

    .line 79
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "newSha256":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 80
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "newSha256":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
