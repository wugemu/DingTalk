.class public final Ljni;
.super Ljava/lang/Object;
.source "PlayerEnvironment.java"


# static fields
.field private static a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

.field private static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Ljni;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    .line 1519
    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->a()Ljnl;

    move-result-object v1

    .line 1520
    new-instance v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;-><init>(Ljnl;B)V

    .line 24
    sput-object v0, Ljni;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljni;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    sget-object v3, Ljni;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p0}, Ljny;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, "cacheRoot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljni;->b:Ljava/lang/String;

    .line 42
    .end local v0    # "cacheRoot":Ljava/io/File;
    :cond_0
    new-instance v3, Ljof;

    invoke-direct {v3}, Ljof;-><init>()V

    invoke-virtual {v3, p1}, Ljof;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v3, Ljni;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 49
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
