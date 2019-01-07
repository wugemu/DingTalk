.class public Lath;
.super Ljava/lang/Object;
.source "HolidayArrangementProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lath$a;
    }
.end annotation


# static fields
.field private static volatile a:Lath;


# instance fields
.field private b:Lapx;

.field private c:Lath$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lapx;

    invoke-direct {v0}, Lapx;-><init>()V

    iput-object v0, p0, Lath;->b:Lapx;

    .line 27
    new-instance v0, Lath$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lath$a;-><init>(B)V

    iput-object v0, p0, Lath;->c:Lath$a;

    .line 28
    return-void
.end method

.method static synthetic a(Lath;)Lapx;
    .locals 1
    .param p0, "x0"    # Lath;

    .prologue
    .line 16
    iget-object v0, p0, Lath;->b:Lapx;

    return-object v0
.end method

.method public static a()Lath;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lath;->a:Lath;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lath;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lath;->a:Lath;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lath;

    invoke-direct {v0}, Lath;-><init>()V

    sput-object v0, Lath;->a:Lath;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lath;->a:Lath;

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

.method public static b()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 52
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "group_calendar"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 54
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 55
    return-object v0
.end method

.method static synthetic c()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lath;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lath;->c:Lath$a;

    invoke-virtual {v0, p1}, Lath$a;->execute(Ljava/lang/Runnable;)V

    .line 62
    :cond_0
    return-void
.end method
