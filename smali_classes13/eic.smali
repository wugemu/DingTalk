.class public Leic;
.super Ljava/lang/Object;
.source "UpLoadLogUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Leic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leic;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Leic;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Leic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mSdkLogDir"    # Ljava/lang/String;
    .param p1, "mConfFocusLog"    # Ljava/lang/String;
    .param p2, "mSessionId"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v1, Leic;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 35
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 36
    new-instance v1, Leic$1;

    invoke-direct {v1, p0, p1, p2}, Leic$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Leic;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 69
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v1, "e":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    .local v6, "zip":Ljava/util/zip/ZipOutputStream;
    const-string/jumbo v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 72
    .local v7, "zipBytes":[B
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string/jumbo v9, "0"

    invoke-direct {v3, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    array-length v9, v7

    int-to-long v10, v9

    invoke-virtual {v3, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 74
    invoke-virtual {v6, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 75
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 76
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 77
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 79
    .local v2, "encode":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 80
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 81
    new-instance v0, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v2

    const/4 v11, 0x0

    invoke-static {v2, v9, v10, v11}, Lhv;->b([BIII)[B

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v0, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v1    # "e":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "encode":[B
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "zip":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "zipBytes":[B
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "var7":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v4    # "var7":Ljava/io/UnsupportedEncodingException;
    :goto_1
    move-object v0, v8

    .line 89
    goto :goto_0

    .line 85
    :catch_1
    move-exception v5

    .line 86
    .local v5, "var8":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v5    # "var8":Ljava/io/IOException;
    :cond_0
    move-object v0, v8

    .line 91
    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mSdkLogDir"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 99
    .local v2, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "logDirFile":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    :cond_0
    const-string/jumbo v5, "focus"

    sget-object v6, Leic;->a:Ljava/lang/String;

    const-string/jumbo v7, "Native sdk not exist"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v5, 0x0

    .line 125
    :goto_0
    return-object v5

    .line 105
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "log":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 109
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 110
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v5

    const v6, 0x19000

    if-le v5, v6, :cond_2

    .line 111
    const/4 v5, 0x0

    const/16 v6, 0x2800

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 115
    .end local v3    # "log":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string/jumbo v5, "focus"

    sget-object v6, Leic;->a:Ljava/lang/String;

    const-string/jumbo v7, "Native sdk log exception"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    if-eqz v0, :cond_3

    .line 119
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 125
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 117
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "log":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_6

    .line 119
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 122
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 117
    .end local v3    # "log":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_5

    .line 119
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 122
    :cond_5
    :goto_5
    throw v5

    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v6

    goto :goto_5

    .line 117
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 115
    :catch_4
    move-exception v5

    goto :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "log":Ljava/lang/String;
    :cond_6
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method
