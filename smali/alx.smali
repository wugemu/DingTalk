.class public final Lalx;
.super Ljava/lang/Object;
.source "HttpsHostPortMgr.java"

# interfaces
.implements Lajz$a;


# static fields
.field public static a:Lalx;


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v3, "https://h-adashx.ut.taobao.com/upload"

    iput-object v3, p0, Lalx;->b:Ljava/lang/String;

    .line 31
    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 1305
    iget-object v3, v3, Lajw;->c:Landroid/content/Context;

    .line 31
    const-string/jumbo v4, "utanalytics_https_host"

    invoke-static {v3, v4}, Laml;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "localConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v0}, Lalx;->a(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 2305
    iget-object v3, v3, Lajw;->c:Landroid/content/Context;

    .line 33
    const-string/jumbo v4, "utanalytics_https_host"

    invoke-static {v3, v4}, Land;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "localSPConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v1}, Lalx;->a(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_https_host"

    invoke-virtual {v3, v4}, Lajz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "serverConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v2}, Lalx;->a(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_https_host"

    invoke-virtual {v3, v4, p0}, Lajz;->a(Ljava/lang/String;Lajz$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "localConfigHostPort":Ljava/lang/String;
    .end local v1    # "localSPConfigHostPort":Ljava/lang/String;
    .end local v2    # "serverConfigHostPort":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized a()Lalx;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lalx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lalx;->a:Lalx;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lalx;

    invoke-direct {v0}, Lalx;-><init>()V

    sput-object v0, Lalx;->a:Lalx;

    .line 25
    :cond_0
    sget-object v0, Lalx;->a:Lalx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalx;->b:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lalx;->a(Ljava/lang/String;)V

    .line 47
    return-void
.end method
