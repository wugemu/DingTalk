.class public Lcom/ali/user/open/a/b;
.super Ljava/lang/Object;
.source "CookieManagerWrapper.java"


# static fields
.field public static final a:Lcom/ali/user/open/a/b;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/ali/user/open/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/open/a/b;->b:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/ali/user/open/a/b;

    invoke-direct {v0}, Lcom/ali/user/open/a/b;-><init>()V

    sput-object v0, Lcom/ali/user/open/a/b;->a:Lcom/ali/user/open/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 102
    const-string/jumbo v0, "clearCookies"

    const-string/jumbo v2, "into clearCookies "

    invoke-static {v0, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 107
    const-string/jumbo v0, "clearCookies"

    const-string/jumbo v2, "into clearCookies removeSessionCookie finish"

    invoke-static {v0, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/ali/user/open/a/b;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "cookies"

    invoke-static {v0, v2}, Lcom/ali/user/open/core/util/FileUtils;->readFileData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    sget-object v2, Lcom/ali/user/open/a/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get cookie from storage:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v2, "\u0005"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/open/a/b;->c:[Ljava/lang/String;

    .line 116
    :cond_0
    const-string/jumbo v0, "clearCookies"

    const-string/jumbo v2, "into clearCookies readFileData finish"

    invoke-static {v0, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/ali/user/open/a/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v4, p0, Lcom/ali/user/open/a/b;->c:[Ljava/lang/String;

    array-length v6, v4

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v0, v4, v2

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 122
    :try_start_0
    invoke-static {v0}, Lcom/ali/user/open/a/e;->a(Ljava/lang/String;)Lcom/ali/user/open/a/d;

    move-result-object v0

    .line 123
    const-string/jumbo v7, "munb"

    iget-object v8, v0, Lcom/ali/user/open/a/d;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {v0}, Lcom/ali/user/open/a/e;->b(Lcom/ali/user/open/a/d;)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-static {v0}, Lcom/ali/user/open/a/e;->a(Lcom/ali/user/open/a/d;)V

    .line 126
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v8

    invoke-virtual {v0}, Lcom/ali/user/open/a/d;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/ali/user/open/core/WebViewProxy;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v7, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    const-string/jumbo v8, ".taobao.com"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 139
    :cond_3
    :try_start_1
    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->otherInfo:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 140
    sget-object v0, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v0}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/open/session/InternalSession;->otherInfo:Ljava/util/Map;

    const-string/jumbo v2, "ssoDomainList"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_8

    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 142
    check-cast v0, Ljava/util/ArrayList;

    .line 144
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v4, v0

    .line 152
    :goto_3
    if-eqz v4, :cond_6

    array-length v0, v4

    if-lez v0, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 153
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/a/d;

    .line 155
    iget-object v6, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    .line 156
    array-length v7, v4

    move v2, v3

    :goto_5
    if-ge v2, v7, :cond_5

    aget-object v8, v4, v2

    .line 157
    const-string/jumbo v9, "munb"

    iget-object v10, v0, Lcom/ali/user/open/a/d;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 158
    iput-object v8, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    .line 159
    invoke-static {v0}, Lcom/ali/user/open/a/e;->b(Lcom/ali/user/open/a/d;)Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-static {v0}, Lcom/ali/user/open/a/e;->a(Lcom/ali/user/open/a/d;)V

    .line 162
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v9

    invoke-virtual {v0}, Lcom/ali/user/open/a/d;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Lcom/ali/user/open/core/WebViewProxy;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 148
    :catch_1
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v1

    goto :goto_3

    .line 165
    :cond_5
    iput-object v6, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    goto :goto_4

    .line 169
    :cond_6
    sget-object v0, Lcom/ali/user/open/a/b;->b:Ljava/lang/String;

    const-string/jumbo v2, "injectCookie cookies is null"

    invoke-static {v0, v2}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object v1, p0, Lcom/ali/user/open/a/b;->c:[Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cookies"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/core/util/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_7
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v0

    const-string/jumbo v1, "http://taobao.com"

    const-string/jumbo v2, "cookie2=;Domain=.taobao.com;Path=\\/;Expires=Thu, 01-Oct-2000 00:00:00 GMT;HttpOnly"

    invoke-interface {v0, v1, v2}, Lcom/ali/user/open/core/WebViewProxy;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "clearCookies"

    const-string/jumbo v1, "into clearCookies reset cookie finish"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/open/core/WebViewProxy;->removeExpiredCookie()V

    .line 179
    const-string/jumbo v0, "clearCookies"

    const-string/jumbo v1, "into clearCookies removeExpiredCookie finish"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/open/core/WebViewProxy;->flush()V

    .line 181
    const-string/jumbo v0, "clearCookies"

    const-string/jumbo v1, "into clearCookies  finish"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 48
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/ali/user/open/a/b;->c:[Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    if-eqz p2, :cond_5

    .line 51
    sget-object v0, Lcom/ali/user/open/a/b;->b:Ljava/lang/String;

    const-string/jumbo v1, "injectCookie cookies != null"

    invoke-static {v0, v1}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    array-length v4, p2

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, p2, v1

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 56
    :try_start_1
    invoke-static {v0}, Lcom/ali/user/open/a/e;->a(Ljava/lang/String;)Lcom/ali/user/open/a/d;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/ali/user/open/a/e;->b(Lcom/ali/user/open/a/d;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v0}, Lcom/ali/user/open/a/d;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    sget-object v7, Lcom/ali/user/open/a/b;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "add cookie: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Lcom/ali/user/open/core/WebViewProxy;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v5, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_1
    if-eqz p3, :cond_3

    :try_start_3
    array-length v0, p3

    if-lez v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/a/d;

    .line 75
    iget-object v4, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    .line 76
    array-length v5, p3

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_2

    aget-object v6, p3, v1

    .line 77
    iput-object v6, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Lcom/ali/user/open/a/e;->b(Lcom/ali/user/open/a/d;)Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-virtual {v0}, Lcom/ali/user/open/a/d;->toString()Ljava/lang/String;

    move-result-object v8

    .line 81
    sget-object v9, Lcom/ali/user/open/a/b;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "add cookies to domain:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", cookie = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/ali/user/open/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v6

    invoke-interface {v6, v7, v8}, Lcom/ali/user/open/core/WebViewProxy;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 85
    :cond_2
    iput-object v4, v0, Lcom/ali/user/open/a/d;->a:Ljava/lang/String;

    goto :goto_2

    .line 89
    :cond_3
    invoke-static {}, Lcom/ali/user/open/a/a;->a()Lcom/ali/user/open/core/WebViewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/open/core/WebViewProxy;->flush()V

    .line 92
    iget-object v0, p0, Lcom/ali/user/open/a/b;->c:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 93
    invoke-static {}, Lcom/ali/user/open/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cookies"

    const-string/jumbo v2, "\u0005"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/core/util/FileUtils;->writeFileData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :cond_4
    :goto_4
    monitor-exit p0

    return-void

    .line 96
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/ali/user/open/a/b;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method
