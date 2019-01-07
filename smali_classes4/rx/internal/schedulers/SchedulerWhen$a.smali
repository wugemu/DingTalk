.class final Lrx/internal/schedulers/SchedulerWhen$a;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Llgr;

.field private b:Llhf;


# direct methods
.method public constructor <init>(Llhf;Llgr;)V
    .locals 0
    .param p1, "action"    # Llhf;
    .param p2, "actionCompletable"    # Llgr;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$a;->b:Llhf;

    .line 303
    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$a;->a:Llgr;

    .line 304
    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$a;->b:Llhf;

    invoke-interface {v0}, Llhf;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$a;->a:Llgr;

    invoke-interface {v0}, Llgr;->onCompleted()V

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$a;->a:Llgr;

    invoke-interface {v1}, Llgr;->onCompleted()V

    throw v0
.end method
