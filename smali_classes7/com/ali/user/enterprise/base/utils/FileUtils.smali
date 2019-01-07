.class public Lcom/ali/user/enterprise/base/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string/jumbo v1, ""

    .line 28
    .local v1, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 29
    .local v3, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 30
    .local v4, "length":I
    if-lez v4, :cond_0

    .line 31
    new-array v0, v4, [B

    .line 32
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 33
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "content":Ljava/lang/String;
    .local v2, "content":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 40
    .end local v0    # "buffer":[B
    .end local v2    # "content":Ljava/lang/String;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    .restart local v1    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v5

    goto :goto_0

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "length":I
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_0
.end method

.method public static writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 17
    .local v0, "fout":Ljava/io/FileOutputStream;
    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v0    # "fout":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
