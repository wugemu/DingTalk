.class public final Ljif;
.super Ljava/lang/Object;
.source "CookieMgr.java"


# static fields
.field public static a:Landroid/webkit/CookieManager;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Ljif;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1040
    const-class v4, Ljif;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Ljif;->b:Z

    if-nez v3, :cond_0

    sget-object v3, Lmq;->b:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1041
    sget-object v3, Lmq;->b:Landroid/content/Context;

    invoke-static {v3}, Ljif;->a(Landroid/content/Context;)V

    .line 1043
    :cond_0
    sget-boolean v3, Ljif;->b:Z

    .line 47
    if-nez v3, :cond_1

    .line 48
    const-string/jumbo v3, "CookieMgr"

    const-string/jumbo v5, "cookieMgr not setup"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const/4 v1, 0x0

    .line 59
    :goto_0
    monitor-exit v4

    return-object v1

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 54
    .local v1, "sec":Ljava/lang/String;
    :try_start_1
    sget-object v3, Ljif;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v3, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "cookieString":Ljava/lang/String;
    invoke-static {v0}, Ljif;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 56
    .end local v0    # "cookieString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 57
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v3, "CookieMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "get cookie failed. url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v2, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1040
    .end local v1    # "sec":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v2, Ljif;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Ljif;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 37
    :goto_0
    monitor-exit v2

    return-void

    .line 28
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 29
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 30
    sput-object v1, Ljif;->a:Landroid/webkit/CookieManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 31
    sget-object v1, Ljif;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 32
    const/4 v1, 0x1

    sput-boolean v1, Ljif;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "CookieMgr"

    const-string/jumbo v3, "setup"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 24
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "cookie"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x27

    const/16 v11, 0x22

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "sec":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 66
    const/4 v7, 0x0

    .line 87
    :goto_0
    return-object v7

    .line 68
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v7, ";"

    invoke-direct {v5, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "namevaluePair":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 73
    .local v0, "index":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_5

    .line 74
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "sec"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1091
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_3

    .line 1093
    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    .end local v0    # "index":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "namevaluePair":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_2
    move-object v7, v3

    .line 87
    goto :goto_0

    .line 1095
    .restart local v0    # "index":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "namevaluePair":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_4

    .line 1097
    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v6

    .line 1099
    goto :goto_1

    .line 81
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Invalid cookie name-value pair"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "index":I
    .end local v2    # "namevaluePair":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 85
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "CookieMgr"

    const-string/jumbo v8, "parse"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v4, v9}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method
