.class public Lcbg;
.super Ljava/lang/Object;
.source "FestivalRedPacketManager.java"


# static fields
.field private static a:Lcbg;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcbg;->b:Ljava/util/Map;

    .line 50
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcbg;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 51
    return-void
.end method

.method public static a()Lcbg;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcbg;->a:Lcbg;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lcbg;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcbg;->a:Lcbg;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcbg;

    invoke-direct {v0}, Lcbg;-><init>()V

    sput-object v0, Lcbg;->a:Lcbg;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcbg;->a:Lcbg;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcbg;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcbg;

    .prologue
    .line 44
    iget-object v0, p0, Lcbg;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcbg;Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcbg;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    .line 1445
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1447
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1451
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    const/4 v0, 0x1

    invoke-direct {v4, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1452
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 1453
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1454
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 1455
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1456
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "../"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcop;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1460
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1462
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1463
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 1465
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1488
    :catchall_0
    move-exception v0

    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 1490
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1493
    :cond_3
    :goto_2
    throw v0

    .line 1467
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1468
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1473
    :cond_5
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1474
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v1

    .line 1475
    const/16 v0, 0x2000

    :try_start_6
    new-array v0, v0, [B

    .line 1477
    :goto_3
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 1478
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 1482
    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_7
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1483
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1480
    :cond_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1482
    :try_start_9
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1483
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 1488
    :cond_7
    if-eqz v4, :cond_8

    .line 1490
    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 1493
    :cond_8
    :goto_5
    return-void

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1491
    :catch_1
    move-exception v1

    .line 1492
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1488
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 1482
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4
.end method

.method static synthetic a(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    .line 1425
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1433
    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    .line 1434
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1435
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1439
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1440
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    .line 1437
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1439
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1440
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1441
    :cond_2
    return-void
.end method

.method public static b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "birthdayRedEnvelop"

    const-string/jumbo v4, "birthday_red_packet"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string/jumbo v0, "{\"startTime\":1538236800000,\"icon\":\"@lAjPBY0V5HlDyIPOQooNCs46ZY0h\",\"festivalPackage\":\"@lAjPDeC2tv--hKrOV7WXAM5dXTGp\",\"title\":\"\\u751f\\u65e5\\u7ea2\\u5305\",\"endTime\":7976592001000}"

    .line 77
    :cond_0
    const-class v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    invoke-static {v0, v2}, Lcor;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    .line 78
    .local v1, "result":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    return-object v1
.end method

.method static synthetic b(Lcbg;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcbg;

    .prologue
    .line 44
    iget-object v0, p0, Lcbg;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method public static c()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 82
    invoke-static {}, Lcbh;->a()Lcbh;

    invoke-static {}, Lcbh;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;

    move-result-object v6

    .line 84
    .local v6, "result":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-eqz v6, :cond_1

    .line 107
    .end local v6    # "result":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    .local v5, "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 87
    .end local v5    # "jsonString":Ljava/lang/String;
    .restart local v6    # "result":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    :cond_1
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v9, "festivalRedEnvelop"

    const-string/jumbo v10, "festival_red_packet"

    invoke-virtual {v7, v9, v10}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .restart local v5    # "jsonString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v6, v8

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    invoke-static {v7, v5, v9}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    if-nez v6, :cond_3

    move-object v6, v8

    .line 98
    goto :goto_0

    .line 94
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v2

    .line 101
    .local v2, "currentTime":J
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-gtz v7, :cond_4

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    :cond_4
    iget-wide v10, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->startTime:J

    cmp-long v7, v2, v10

    if-ltz v7, :cond_5

    iget-wide v10, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->endTime:J

    cmp-long v7, v2, v10

    if-ltz v7, :cond_0

    :cond_5
    move-object v6, v8

    .line 107
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)Z
    .locals 7
    .param p1, "packageMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    if-eqz p2, :cond_0

    .line 114
    const-string/jumbo v3, ""

    const-string/jumbo v5, "packageMediaId is null"

    invoke-interface {p2, v3, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v3, v4

    .line 421
    :goto_0
    return v3

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    .local v1, "result":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;
    iget-object v6, p0, Lcbg;->b:Ljava/util/Map;

    monitor-enter v6

    .line 122
    :try_start_0
    iget-object v3, p0, Lcbg;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lcbg;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-object v1, v0

    .line 125
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v1, :cond_4

    .line 127
    if-eqz p2, :cond_3

    .line 128
    invoke-interface {p2, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    :cond_3
    move v3, v4

    .line 130
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 135
    :cond_4
    const-class v3, Lcbg;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 136
    .local v2, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v3, Lcbg$1;

    invoke-direct {v3, p0, p1, p2}, Lcbg$1;-><init>(Lcbg;Ljava/lang/String;Lcma;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    move v3, v5

    .line 421
    goto :goto_0
.end method
