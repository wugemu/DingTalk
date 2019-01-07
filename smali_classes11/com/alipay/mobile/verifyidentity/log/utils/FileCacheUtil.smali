.class public Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;
.super Ljava/lang/Object;
.source "FileCacheUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static clearDir(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->clearDir(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static clearDir(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 165
    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_3

    array-length v3, v2

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    .line 171
    goto :goto_0

    .line 174
    :cond_4
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    .line 176
    if-eqz p1, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 180
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->clearDir(Ljava/lang/String;Ljava/util/List;)Z

    .line 183
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 174
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->clearDir(Ljava/lang/String;)Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 131
    :cond_1
    return v0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->delete(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 83
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 92
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 94
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    :goto_2
    :try_start_2
    sget-object v3, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    if-eqz v2, :cond_0

    .line 102
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    .line 104
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 102
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    .line 104
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    .line 102
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 105
    :cond_3
    :goto_4
    throw v0

    .line 103
    :catch_3
    move-exception v1

    .line 104
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 100
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 97
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return v1

    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 30
    const-string/jumbo p1, ""

    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 35
    const/16 v3, 0x400

    new-array v5, v3, [B

    .line 38
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v4, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 43
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 45
    :cond_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    const-string/jumbo v4, ""

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 61
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    :goto_2
    if-eqz v2, :cond_4

    .line 68
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    move v1, v0

    .line 74
    goto :goto_0

    .line 49
    :cond_5
    :try_start_5
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 50
    :goto_4
    :try_start_6
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    .line 51
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 55
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    .line 57
    :goto_5
    :try_start_7
    sget-object v4, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 59
    if-eqz v2, :cond_6

    .line 61
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 66
    :cond_6
    :goto_6
    if-eqz v3, :cond_9

    .line 68
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move v0, v1

    .line 71
    goto :goto_3

    .line 62
    :catch_1
    move-exception v1

    .line 63
    sget-object v3, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 69
    :catch_2
    move-exception v1

    .line 70
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 62
    :catch_3
    move-exception v0

    .line 63
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 69
    :catch_4
    move-exception v0

    .line 70
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 71
    goto :goto_3

    .line 59
    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_7
    if-eqz v2, :cond_7

    .line 61
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 66
    :cond_7
    :goto_8
    if-eqz v4, :cond_8

    .line 68
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 71
    :cond_8
    :goto_9
    throw v0

    .line 62
    :catch_5
    move-exception v1

    .line 63
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 69
    :catch_6
    move-exception v1

    .line 70
    sget-object v2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 59
    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v4, v3

    goto :goto_7

    .line 55
    :catch_7
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_5

    :catch_9
    move-exception v0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_5

    :cond_9
    move v0, v1

    goto/16 :goto_3

    :cond_a
    move-object v2, v4

    goto/16 :goto_1
.end method
