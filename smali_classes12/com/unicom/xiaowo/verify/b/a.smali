.class public Lcom/unicom/xiaowo/verify/b/a;
.super Ljava/lang/Object;
.source "AccountOpen.java"


# static fields
.field private static volatile a:Lcom/unicom/xiaowo/verify/b/a;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/unicom/xiaowo/verify/b/a;->a:Lcom/unicom/xiaowo/verify/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/b/a;->b:Landroid/os/Handler;

    .line 1045
    :try_start_0
    invoke-static {}, Lcom/unicom/xiaowo/verify/d/e;->a()V

    .line 1047
    invoke-static {}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->getInstance()Lcom/unicom/xiaowo/verify/sms/SimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->init(Landroid/content/Context;)V

    .line 1049
    const-string/jumbo v0, "init complete"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_0
    return-void

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/unicom/xiaowo/verify/b/a;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/unicom/xiaowo/verify/b/a;->a:Lcom/unicom/xiaowo/verify/b/a;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/unicom/xiaowo/verify/b/a;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/unicom/xiaowo/verify/b/a;->a:Lcom/unicom/xiaowo/verify/b/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/unicom/xiaowo/verify/b/a;

    invoke-direct {v0, p0}, Lcom/unicom/xiaowo/verify/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unicom/xiaowo/verify/b/a;->a:Lcom/unicom/xiaowo/verify/b/a;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/unicom/xiaowo/verify/b/a;->a:Lcom/unicom/xiaowo/verify/b/a;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-static {p2}, Lcom/unicom/xiaowo/verify/d/f;->c(Ljava/lang/String;)V

    .line 58
    invoke-static {p3}, Lcom/unicom/xiaowo/verify/d/f;->d(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/unicom/xiaowo/verify/c/c;->a()Lcom/unicom/xiaowo/verify/c/c;

    move-result-object v0

    new-instance v1, Lcom/unicom/xiaowo/verify/b/b;

    invoke-direct {v1, p0, p1, p4}, Lcom/unicom/xiaowo/verify/b/b;-><init>(Lcom/unicom/xiaowo/verify/b/a;Landroid/content/Context;Lcom/unicom/xiaowo/verify/ResultListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/unicom/xiaowo/verify/c/c;->a(Landroid/content/Context;Lcom/unicom/xiaowo/verify/c/f;)V

    .line 95
    return-void
.end method
