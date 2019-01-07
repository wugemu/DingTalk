.class public Lcom/alipay/apmobilesecuritysdk/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/c/d$a;
    }
.end annotation


# static fields
.field private static f:Lcom/alipay/apmobilesecuritysdk/c/d;

.field private static g:Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/String;

.field private d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->f:Lcom/alipay/apmobilesecuritysdk/c/d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->c:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->d:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->e:I

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lisy;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "host"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->c:Ljava/lang/String;

    const-string/jumbo v0, "port"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->c:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->d:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/c/d;
    .locals 2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->f:Lcom/alipay/apmobilesecuritysdk/c/d;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/apmobilesecuritysdk/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->f:Lcom/alipay/apmobilesecuritysdk/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/c/d;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->f:Lcom/alipay/apmobilesecuritysdk/c/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->f:Lcom/alipay/apmobilesecuritysdk/c/d;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/c/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/c/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/apmobilesecuritysdk/c/d;)I
    .locals 1

    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->d:I

    return v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/apmobilesecuritysdk/c/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/alipay/apmobilesecuritysdk/c/d;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/d;->g:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->a:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/c/d$a;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/c/d$a;-><init>(Lcom/alipay/apmobilesecuritysdk/c/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
