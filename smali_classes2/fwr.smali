.class public final Lfwr;
.super Ljava/lang/Object;
.source "DeviceCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfwr$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/doraemon/cache/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "key_cache_device_entity"

    sput-object v0, Lfwr;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lfwr;->b:Lcom/alibaba/doraemon/cache/Cache;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lfwr;-><init>()V

    return-void
.end method

.method public static a()Lfwr;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lfwr$a;->a:Lfwr;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfwr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 41
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/alibaba/doraemon/cache/Cache;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lfwr;->b:Lcom/alibaba/doraemon/cache/Cache;

    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "CACHE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    iput-object v0, p0, Lfwr;->b:Lcom/alibaba/doraemon/cache/Cache;

    .line 48
    iget-object v0, p0, Lfwr;->b:Lcom/alibaba/doraemon/cache/Cache;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/cache/Cache;->setCacheDir(Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lfwr;->b:Lcom/alibaba/doraemon/cache/Cache;

    return-object v0
.end method


# virtual methods
.method public final a(Lfws;)V
    .locals 5
    .param p1, "deviceListObject"    # Lfws;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lfws;->a()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-direct {p0}, Lfwr;->d()Lcom/alibaba/doraemon/cache/Cache;

    move-result-object v0

    .line 76
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lfwr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/cache/Cache;->write(Ljava/lang/String;[B[B)Z

    .line 81
    .end local v0    # "cache":Lcom/alibaba/doraemon/cache/Cache;
    .end local v1    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final b()Lfws;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, "deviceListObject":Lfws;
    invoke-direct {p0}, Lfwr;->d()Lcom/alibaba/doraemon/cache/Cache;

    move-result-object v0

    .line 56
    .local v0, "cache":Lcom/alibaba/doraemon/cache/Cache;
    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lfwr;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v3

    .line 58
    .local v3, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v3, :cond_0

    .line 59
    invoke-interface {v3}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v4

    .line 60
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 62
    .local v1, "data":[B
    :try_start_0
    invoke-static {v4}, Lcom/laiwang/protocol/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lfws;->a(Ljava/lang/String;)Lfws;

    move-result-object v2

    .line 68
    .end local v1    # "data":[B
    .end local v3    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v2

    .restart local v1    # "data":[B
    .restart local v3    # "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
