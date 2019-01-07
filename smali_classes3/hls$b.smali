.class final Lhls$b;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:Lhls$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1566
    sget-object v0, Lhls$b;->a:Lhls$b;

    if-nez v0, :cond_0

    .line 1567
    new-instance v0, Lhls$b;

    invoke-direct {v0}, Lhls$b;-><init>()V

    sput-object v0, Lhls$b;->a:Lhls$b;

    .line 1569
    :cond_0
    sget-object v0, Lhls$b;->a:Lhls$b;

    .line 561
    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 574
    const-string/jumbo v1, "THREAD"

    .line 575
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 577
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "MiniappInstance"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method
