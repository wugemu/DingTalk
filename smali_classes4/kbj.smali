.class public final Lkbj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkbj;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/f;)V
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Ljuq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/f;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TinyData TinyDataStorage.cacheTinyData cache data to file begin item:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    invoke-static {p0}, Ljvd;->a(Landroid/content/Context;)Ljvd;

    move-result-object v0

    new-instance v1, Lkbk;

    invoke-direct {v1, p0, p1}, Lkbk;-><init>(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/f;)V

    .line 1000
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljvd;->a(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)[B
    .locals 4

    .prologue
    .line 0
    invoke-static {p0}, Lkbf;->a(Landroid/content/Context;)Lkbf;

    move-result-object v0

    const-string/jumbo v1, "mipush"

    const-string/jumbo v2, "td_key"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lkbf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Ljvt;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkbf;->a(Landroid/content/Context;)Lkbf;

    move-result-object v1

    const-string/jumbo v2, "mipush"

    const-string/jumbo v3, "td_key"

    invoke-virtual {v1, v2, v3, v0}, Lkbf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    :cond_0
    invoke-static {v0}, Ljvq;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    .line 0
    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/f;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 0
    .line 3000
    invoke-static {p0}, Lkbj;->a(Landroid/content/Context;)[B

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lkev;->a(Lorg/apache/thrift/a;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljuk;->b([B[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TinyData write to cache file failed case encryption fail item:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Ljur;->a(Ljava/io/Writer;)V

    :goto_0
    invoke-static {v2}, Ljur;->a(Ljava/io/OutputStream;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    array-length v1, v0

    const/16 v3, 0x2800

    if-le v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TinyData write to cache file failed case too much data content item:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Ljur;->a(Ljava/io/Writer;)V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "tiny_data.data"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    array-length v3, v0

    invoke-static {v3}, Ljuy;->a(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Ljur;->a(Ljava/io/Writer;)V

    :goto_2
    invoke-static {v1}, Ljur;->a(Ljava/io/OutputStream;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    const-string/jumbo v3, "TinyData write to cache file failed cause io exception"

    invoke-static {v3, v0}, Ljuw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Ljur;->a(Ljava/io/Writer;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    const-string/jumbo v3, "TinyData write to cache file  failed"

    invoke-static {v3, v0}, Ljuw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Ljur;->a(Ljava/io/Writer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v2}, Ljur;->a(Ljava/io/Writer;)V

    invoke-static {v1}, Ljur;->a(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3
.end method
