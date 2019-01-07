.class public Lcom/alipay/mobile/nebula/util/H5PatternHelper;
.super Ljava/lang/Object;
.source "H5PatternHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "H5PatternHelper"

.field private static sPatternCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->DEBUG:Z

    .line 19
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->sPatternCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 10
    .param p0, "patternStr"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 36
    if-nez p0, :cond_1

    move-object v1, v4

    .line 60
    :cond_0
    :goto_0
    return-object v1

    .line 39
    :cond_1
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->sPatternCache:Landroid/util/LruCache;

    invoke-virtual {v5, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 40
    .local v1, "pattern":Ljava/util/regex/Pattern;
    if-eqz v1, :cond_2

    .line 41
    sget-boolean v4, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 42
    const-string/jumbo v4, "H5PatternHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pattern cache hit: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 49
    .local v2, "start":J
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 50
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->sPatternCache:Landroid/util/LruCache;

    invoke-virtual {v5, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-boolean v5, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 52
    const-string/jumbo v5, "H5PatternHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pattern cache miss, use time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v2    # "start":J
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v5, "H5PatternHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pattern "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " compile error!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 60
    goto/16 :goto_0
.end method

.method public static matchRegex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 23
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v2

    .line 26
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 27
    .local v1, "pattern":Ljava/util/regex/Pattern;
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 31
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method
