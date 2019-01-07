.class public Lewe;
.super Ljava/lang/Object;
.source "RingingRateStatistics.java"


# static fields
.field private static n:Lewe;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Z

.field public l:Landroid/os/Handler;

.field public m:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewe;->k:Z

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lewe;->l:Landroid/os/Handler;

    .line 40
    new-instance v0, Lewe$1;

    invoke-direct {v0, p0}, Lewe$1;-><init>(Lewe;)V

    iput-object v0, p0, Lewe;->m:Ljava/lang/Runnable;

    .line 94
    return-void
.end method

.method public static a()Lewe;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lewe;->n:Lewe;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lewe;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lewe;->n:Lewe;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lewe;

    invoke-direct {v0}, Lewe;-><init>()V

    sput-object v0, Lewe;->n:Lewe;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Lewe;->n:Lewe;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lewe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lewe;

    .prologue
    .line 23
    iget-object v0, p0, Lewe;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "beginTime"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "bizType"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-wide p1, p0, Lewe;->j:J

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lewe;->k:Z

    .line 139
    const-string/jumbo v0, "call_ring_time:"

    iput-object v0, p0, Lewe;->c:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "result:error"

    iput-object v0, p0, Lewe;->i:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "call_begin_time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lewe;->b:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uniq_key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lewe;->d:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "biz_type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lewe;->e:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "incoming_call_number:057188157855"

    iput-object v0, p0, Lewe;->a:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dev:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lewe;->f:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "caller_uid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lewe;->g:Ljava/lang/String;

    .line 147
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "caller_mobile:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lewe;->h:Ljava/lang/String;

    .line 152
    :goto_0
    iget-object v0, p0, Lewe;->l:Landroid/os/Handler;

    iget-object v1, p0, Lewe;->m:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void

    .line 150
    :cond_0
    const-string/jumbo v0, "caller_mobile:"

    iput-object v0, p0, Lewe;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lewe;->l:Landroid/os/Handler;

    iget-object v1, p0, Lewe;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lewe;->k:Z

    .line 133
    return-void
.end method
