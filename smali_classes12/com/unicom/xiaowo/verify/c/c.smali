.class public Lcom/unicom/xiaowo/verify/c/c;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static volatile a:Lcom/unicom/xiaowo/verify/c/c;


# instance fields
.field private b:Lcom/unicom/xiaowo/verify/c/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/unicom/xiaowo/verify/c/a;

    invoke-direct {v0}, Lcom/unicom/xiaowo/verify/c/a;-><init>()V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/c/c;->b:Lcom/unicom/xiaowo/verify/c/a;

    .line 28
    return-void
.end method

.method public static a()Lcom/unicom/xiaowo/verify/c/c;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/unicom/xiaowo/verify/c/c;->a:Lcom/unicom/xiaowo/verify/c/c;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/unicom/xiaowo/verify/c/c;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/unicom/xiaowo/verify/c/c;->a:Lcom/unicom/xiaowo/verify/c/c;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/unicom/xiaowo/verify/c/c;

    invoke-direct {v0}, Lcom/unicom/xiaowo/verify/c/c;-><init>()V

    sput-object v0, Lcom/unicom/xiaowo/verify/c/c;->a:Lcom/unicom/xiaowo/verify/c/c;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/unicom/xiaowo/verify/c/c;->a:Lcom/unicom/xiaowo/verify/c/c;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/f;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/c/c;->b:Lcom/unicom/xiaowo/verify/c/a;

    invoke-static {p1}, Lcom/unicom/xiaowo/verify/d/d;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/unicom/xiaowo/verify/c/d;

    invoke-direct {v2, p0, p4}, Lcom/unicom/xiaowo/verify/c/d;-><init>(Lcom/unicom/xiaowo/verify/c/c;Lcom/unicom/xiaowo/verify/c/f;)V

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/unicom/xiaowo/verify/c/a;->a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    invoke-interface {p4, v0, v1}, Lcom/unicom/xiaowo/verify/c/f;->a(ILjava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/unicom/xiaowo/verify/d/a;->a()Lcom/unicom/xiaowo/verify/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/xiaowo/verify/d/a;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/unicom/xiaowo/verify/c/c;Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/f;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unicom/xiaowo/verify/c/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/f;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/unicom/xiaowo/verify/c/f;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/unicom/xiaowo/verify/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/f;->a(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://opencloud.wostore.cn/openapi/networkauth/precheck?unikey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/f;->b(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/g;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 77
    invoke-static {}, Lcom/unicom/xiaowo/verify/d/a;->a()Lcom/unicom/xiaowo/verify/d/a;

    move-result-object v0

    new-instance v2, Lcom/unicom/xiaowo/verify/c/e;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/unicom/xiaowo/verify/c/e;-><init>(Lcom/unicom/xiaowo/verify/c/c;Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/verify/c/f;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/unicom/xiaowo/verify/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/verify/d/a$b;)V

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/unicom/xiaowo/verify/c/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    invoke-interface {p2, v0, v1}, Lcom/unicom/xiaowo/verify/c/f;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
