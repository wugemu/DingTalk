.class final Lhhy$1;
.super Ljava/lang/Object;
.source "HpmAccessor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhy;


# direct methods
.method constructor <init>(Lhhy;)V
    .locals 0
    .param p1, "this$0"    # Lhhy;

    .prologue
    .line 185
    iput-object p1, p0, Lhhy$1;->a:Lhhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 188
    const-string/jumbo v1, "THREAD"

    .line 189
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 190
    .local v0, "t":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "hpm-accessor"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 193
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method
