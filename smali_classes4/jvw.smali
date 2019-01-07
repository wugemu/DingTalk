.class public final Ljvw;
.super Landroid/content/ContextWrapper;


# static fields
.field public static a:Ljvw;


# instance fields
.field public b:Landroid/os/Handler;

.field c:Z

.field public d:Ljava/util/List;

.field public e:I

.field public f:Ljwd;

.field private g:Landroid/os/HandlerThread;

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Ljvw;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljvw;->d:Ljava/util/List;

    iput v1, p0, Ljvw;->e:I

    new-instance v0, Ljxb;

    invoke-direct {v0, p0}, Ljxb;-><init>(Ljvw;)V

    iput-object v0, p0, Ljvw;->f:Ljwd;

    iput-boolean v1, p0, Ljvw;->c:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "metoknlp_app"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljvw;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Ljvw;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Ljxa;

    iget-object v1, p0, Ljvw;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljxa;-><init>(Ljvw;Landroid/os/Looper;)V

    iput-object v0, p0, Ljvw;->b:Landroid/os/Handler;

    .line 1000
    sput-object p1, Ljwa;->b:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Ljwa;->a:Landroid/telephony/TelephonyManager;

    .line 0
    iget-object v0, p0, Ljvw;->b:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static a()Ljvw;
    .locals 1

    sget-object v0, Ljvw;->a:Ljvw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljvw;->a:Ljvw;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljvw;
    .locals 1

    sget-object v0, Ljvw;->a:Ljvw;

    if-nez v0, :cond_0

    new-instance v0, Ljvw;

    invoke-direct {v0, p0}, Ljvw;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljvw;->a:Ljvw;

    :cond_0
    sget-object v0, Ljvw;->a:Ljvw;

    return-object v0
.end method

.method static synthetic a(Ljvw;)V
    .locals 4

    .prologue
    .line 0
    .line 8000
    iget-object v0, p0, Ljvw;->b:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 0
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 0
    invoke-static {}, Ljwh;->a()Ljwh;

    .line 2000
    invoke-static {}, Ljws;->a()Ljws;

    move-result-object v0

    .line 3000
    iget-object v1, v0, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    if-eqz v1, :cond_0

    iget-object v0, v0, Ljws;->b:Lcom/xiaomi/metoknlp/devicediscover/g;

    .line 4000
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Z)V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic b(Ljvw;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 0
    .line 9000
    iget-boolean v0, p0, Ljvw;->c:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Ljvw;->c:Z

    :cond_0
    invoke-static {}, Ljwh;->a()Ljwh;

    move-result-object v0

    .line 10000
    iput-object p0, v0, Ljwh;->a:Landroid/content/Context;

    iget-object v1, v0, Ljwh;->a:Landroid/content/Context;

    invoke-static {v1}, Ljwc;->a(Landroid/content/Context;)V

    iget-boolean v1, v0, Ljwh;->e:Z

    if-nez v1, :cond_1

    iput-boolean v2, v0, Ljwh;->e:Z

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "metoknlp_cl"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Ljwh;->c:Landroid/os/HandlerThread;

    iget-object v1, v0, Ljwh;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Ljwh;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Ljwh;->b:Landroid/os/Handler;

    new-instance v1, Ljww;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljww;-><init>(Ljwh;B)V

    iput-object v1, v0, Ljwh;->d:Ljwx;

    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v1

    iget-object v2, v0, Ljwh;->d:Ljwx;

    invoke-virtual {v1, v2}, Ljwc;->a(Ljwx;)V

    invoke-static {}, Ljvw;->a()Ljvw;

    move-result-object v1

    .line 11000
    iget-boolean v1, v1, Ljvw;->c:Z

    .line 10000
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljwh;->b()V

    .line 0
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljvw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljwi;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljwi;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljvw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwi;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Ljvw;->e:I

    iget-object v0, p0, Ljvw;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    sget-object v0, Ljvw;->a:Ljvw;

    invoke-static {v0}, Ljwc;->a(Landroid/content/Context;)V

    sget-object v0, Ljvw;->a:Ljvw;

    .line 5000
    sget-object v1, Lcom/xiaomi/metoknlp/b/c;->a:Lcom/xiaomi/metoknlp/b/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/metoknlp/b/c;

    invoke-direct {v1, v0}, Lcom/xiaomi/metoknlp/b/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/metoknlp/b/c;->a:Lcom/xiaomi/metoknlp/b/c;

    .line 6000
    :cond_0
    sget-object v0, Lcom/xiaomi/metoknlp/b/c;->a:Lcom/xiaomi/metoknlp/b/c;

    .line 0
    iget-object v1, p0, Ljvw;->f:Ljwd;

    .line 7000
    iget-object v2, v0, Lcom/xiaomi/metoknlp/b/c;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/xiaomi/metoknlp/b/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
