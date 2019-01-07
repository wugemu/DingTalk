.class public final Lhpx;
.super Ljava/lang/Object;
.source "LightNotificationCenter.java"


# static fields
.field private static h:Lhpx;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lhpy;

.field c:Landroid/os/Handler;

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lhpx;->d:J

    .line 34
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lhpx;->e:J

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lhpx;->f:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lhpx;->g:I

    .line 117
    new-instance v0, Lhpx$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhpx$2;-><init>(Lhpx;Landroid/os/Looper;)V

    iput-object v0, p0, Lhpx;->c:Landroid/os/Handler;

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lhpx$1;

    invoke-direct {v1, p0}, Lhpx$1;-><init>(Lhpx;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 86
    return-void
.end method

.method public static declared-synchronized a()Lhpx;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lhpx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhpx;->h:Lhpx;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lhpx;

    invoke-direct {v0}, Lhpx;-><init>()V

    sput-object v0, Lhpx;->h:Lhpx;

    .line 48
    :cond_0
    sget-object v0, Lhpx;->h:Lhpx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lhpx;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lhpx;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lhpx;->b:Lhpy;

    .line 115
    return-void
.end method
