.class public final Lfyk;
.super Ljava/lang/Object;
.source "SdkMeta.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 84
    sput-object v0, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v1, "sdk-version"

    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 94
    if-nez p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v2

    .line 97
    :cond_1
    const/4 v1, 0x0

    .line 99
    .local v1, "id":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    :goto_1
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "SdkMeta"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "getString Id error"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v6

    .line 1305
    iget-object v2, v6, Lajw;->c:Landroid/content/Context;

    .line 21
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_3

    .line 22
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "pt"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 23
    const-string/jumbo v6, "package_type"

    invoke-static {v2, v6}, Lfyk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "pt":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 25
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "pt"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .end local v5    # "pt":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "pid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 31
    const-string/jumbo v6, "project_id"

    invoke-static {v2, v6}, Lfyk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "pid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 33
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "pid"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v4    # "pid":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "bid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 39
    const-string/jumbo v6, "build_id"

    invoke-static {v2, v6}, Lfyk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 41
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "bid"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v0    # "bid":Ljava/lang/String;
    :cond_2
    :goto_2
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "bv"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 47
    const-string/jumbo v6, "base_version"

    invoke-static {v2, v6}, Lfyk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "bv":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 49
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "bv"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v1    # "bv":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-static {}, Lfyk;->b()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "hv":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 57
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "hv"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_4
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "sdk-version"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 62
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "sdk-version"

    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_4
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    return-object v6

    .line 27
    .end local v3    # "hv":Ljava/lang/String;
    .restart local v5    # "pt":Ljava/lang/String;
    :cond_5
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "pt"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 35
    .end local v5    # "pt":Ljava/lang/String;
    .restart local v4    # "pid":Ljava/lang/String;
    :cond_6
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "pid"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 43
    .end local v4    # "pid":Ljava/lang/String;
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_7
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "bid"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    .end local v0    # "bid":Ljava/lang/String;
    .restart local v1    # "bv":Ljava/lang/String;
    :cond_8
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "bv"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 59
    .end local v1    # "bv":Ljava/lang/String;
    .restart local v3    # "hv":Ljava/lang/String;
    :cond_9
    sget-object v6, Lfyk;->a:Ljava/util/Map;

    const-string/jumbo v7, "hv"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "com.taobao.updatecenter.hotpatch.HotPatchManager"

    const-string/jumbo v4, "getInstance"

    invoke-static {v3, v4}, Lanc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v3, "getPatchSuccessedVersion"

    invoke-static {v0, v3}, Lanc;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "retValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v2    # "retValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method
