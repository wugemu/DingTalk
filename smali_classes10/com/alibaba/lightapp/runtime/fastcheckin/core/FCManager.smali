.class public final enum Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;
.super Ljava/lang/Enum;
.source "FCManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

.field public static final enum INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

.field public static final TAG:Ljava/lang/String; = "FCManager"

.field public static final TIMEOUT:I = 0x7530

.field private static mResultCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mTimeout:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mResultCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mResultCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->endRealStart(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private endRealStart(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lhhd;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "executors":Ljava/util/Collection;, "Ljava/util/Collection<Lhhd;>;"
    const/4 v5, 0x0

    .line 167
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mResultCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhd;

    .line 171
    .local v0, "executor":Lhhd;
    if-eqz v0, :cond_1

    .line 2409
    iget-boolean v2, v0, Lhhd;->h:Z

    .line 171
    if-eqz v2, :cond_1

    .line 172
    const-string/jumbo v1, "FCManager"

    const-string/jumbo v2, "isRunning"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "planId"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Lhhd;->a()Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v5

    iget-wide v6, v5, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    .end local v0    # "executor":Lhhd;
    :cond_2
    const-string/jumbo v1, "FCManager"

    const-string/jumbo v2, "realStart end"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mTimeout:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    sget-object v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mResultCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method private preCheck()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 194
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    const-string/jumbo v2, "FCManager"

    const-string/jumbo v3, "preCheck start closed!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string/jumbo v2, "FCManager"

    const-string/jumbo v3, "preCheck start return for not login!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_1
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 203
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    const-string/jumbo v2, "FCManager"

    const-string/jumbo v3, "preCheck manager start ignored for background!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->$VALUES:[Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    return-object v0
.end method


# virtual methods
.method public final add(Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V
    .locals 2
    .param p1, "plansObject"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5124
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$5;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlansObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 281
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4124
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$4;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public final realStart(Ljava/util/List;Landroid/app/Activity;)V
    .locals 4
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhhd;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "fastPlanExecutors":Ljava/util/List;, "Ljava/util/List<Lhhd;>;"
    const/4 v2, 0x0

    .line 112
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "realStart is running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->preCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    :cond_2
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "realStart empty"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_3
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mTimeout:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;

    if-nez v0, :cond_4

    .line 125
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;B)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mTimeout:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;

    .line 127
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->mTimeout:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2124
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/util/List;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final start()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->preCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 215
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->stop(Ljava/lang/String;Ljava/lang/String;J)V

    .line 216
    return-void
.end method

.method public final stop(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;
    .param p3, "planId"    # J

    .prologue
    .line 3124
    const-string/jumbo v0, "fast_checkin"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    .line 219
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method
