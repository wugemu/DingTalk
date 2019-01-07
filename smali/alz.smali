.class public final Lalz;
.super Ljava/lang/Object;
.source "TnetHostPortMgr.java"

# interfaces
.implements Lajz$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalz$a;
    }
.end annotation


# static fields
.field public static a:Lalz;


# instance fields
.field public b:Lalz$a;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    new-instance v3, Lalz$a;

    invoke-direct {v3}, Lalz$a;-><init>()V

    iput-object v3, p0, Lalz;->b:Lalz$a;

    .line 29
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 1305
    iget-object v3, v3, Lajw;->c:Landroid/content/Context;

    .line 29
    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-static {v3, v4}, Laml;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "localConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v0}, Lalz;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 2305
    iget-object v3, v3, Lajw;->c:Landroid/content/Context;

    .line 31
    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-static {v3, v4}, Land;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "localSPConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v1}, Lalz;->a(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-virtual {v3, v4}, Lajz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "serverConfigHostPort":Ljava/lang/String;
    invoke-direct {p0, v2}, Lalz;->a(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v3

    const-string/jumbo v4, "utanalytics_tnet_host_port"

    invoke-virtual {v3, v4, p0}, Lajz;->a(Ljava/lang/String;Lajz$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "localConfigHostPort":Ljava/lang/String;
    .end local v1    # "localSPConfigHostPort":Ljava/lang/String;
    .end local v2    # "serverConfigHostPort":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized a()Lalz;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lalz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lalz;->a:Lalz;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lalz;

    invoke-direct {v0}, Lalz;-><init>()V

    sput-object v0, Lalz;->a:Lalz;

    .line 22
    :cond_0
    sget-object v0, Lalz;->a:Lalz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 54
    const-string/jumbo v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "localHost":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "localPort":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 59
    iget-object v3, p0, Lalz;->b:Lalz$a;

    iput-object v1, v3, Lalz$a;->a:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lalz;->b:Lalz$a;

    iput v2, v3, Lalz$a;->b:I

    .line 64
    .end local v0    # "index":I
    .end local v1    # "localHost":Ljava/lang/String;
    .end local v2    # "localPort":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lalz;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method
