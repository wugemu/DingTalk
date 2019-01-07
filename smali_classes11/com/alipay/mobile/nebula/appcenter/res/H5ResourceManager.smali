.class public Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;
.super Ljava/lang/Object;
.source "H5ResourceManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ResourceManager"

.field private static final resMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->resMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getRaw(I)Ljava/lang/String;
    .locals 4
    .param p0, "resId"    # I

    .prologue
    .line 24
    const-class v2, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->resMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->readRaw(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "content":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->resMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->resMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static readRaw(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaCoreResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->readRawFromResource(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readRawFromResource(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 14
    .param p0, "resId"    # I
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 33
    const/4 v6, 0x0

    .line 34
    .local v6, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .line 35
    .local v2, "ips":Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 37
    .local v8, "time":J
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 39
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 52
    if-eqz v2, :cond_1

    .line 54
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v7, "H5ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "readRaw elapse "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v6

    .line 55
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 56
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5ResourceManager"

    const-string/jumbo v10, "exception detail"

    invoke-static {v7, v10, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 49
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 50
    .restart local v5    # "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v7, "H5ResourceManager"

    const-string/jumbo v10, "Exception"

    invoke-static {v7, v10, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    if-eqz v2, :cond_1

    .line 54
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 55
    :catch_2
    move-exception v5

    .line 56
    const-string/jumbo v7, "H5ResourceManager"

    const-string/jumbo v10, "exception detail"

    invoke-static {v7, v10, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 52
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_2

    .line 54
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 57
    :cond_2
    :goto_2
    throw v7

    .line 55
    :catch_3
    move-exception v5

    .line 56
    .restart local v5    # "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "H5ResourceManager"

    const-string/jumbo v11, "exception detail"

    invoke-static {v10, v11, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
