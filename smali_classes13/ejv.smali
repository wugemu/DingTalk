.class public Lejv;
.super Ljava/lang/Object;
.source "UnReadCountManager.java"


# static fields
.field public static volatile b:Lejv;


# instance fields
.field public a:Landroid/util/SparseIntArray;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lejv;->d:I

    .line 85
    new-instance v0, Lejv$1;

    invoke-direct {v0, p0}, Lejv$1;-><init>(Lejv;)V

    iput-object v0, p0, Lejv;->e:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    .line 72
    invoke-direct {p0}, Lejv;->c()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lejv;->c:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic a(Lejv;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lejv;

    .prologue
    .line 14
    iget-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public static a()Lejv;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lejv;->b:Lejv;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lejv;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lejv;->b:Lejv;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lejv;

    invoke-direct {v0}, Lejv;-><init>()V

    sput-object v0, Lejv;->b:Lejv;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lejv;->b:Lejv;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "force"    # Z

    .prologue
    .line 101
    iget v0, p0, Lejv;->d:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 103
    :cond_0
    iput p1, p0, Lejv;->d:I

    .line 104
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->with(Landroid/content/Context;)Lme/leolin/shortcutbadger/ShortcutBadger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->count(I)V

    .line 106
    :cond_1
    return-void
.end method

.method static synthetic a(Lejv;I)V
    .locals 1
    .param p0, "x0"    # Lejv;
    .param p1, "x1"    # I

    .prologue
    .line 14
    .line 2109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lejv;->a(IZ)V

    .line 14
    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    iget-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    iget-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    iget-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    iget-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lejv;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1128
    iget-object v0, p0, Lejv;->c:Landroid/os/Handler;

    iget-object v1, p0, Lejv;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1129
    iget-object v0, p0, Lejv;->c:Landroid/os/Handler;

    iget-object v1, p0, Lejv;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lejv;->c:Landroid/os/Handler;

    iget-object v1, p0, Lejv;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    invoke-direct {p0}, Lejv;->c()V

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lejv;->a(IZ)V

    .line 117
    return-void
.end method
