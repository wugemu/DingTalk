.class Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;
.super Ljava/lang/Object;
.source "LongRenderDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountDown"
.end annotation


# instance fields
.field private volatile isCounting:Z

.field private mCallback:Ljava/lang/Runnable;

.field private mDelay:J

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;Ljava/lang/Runnable;)V
    .locals 2
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->this$0:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->isCounting:Z

    .line 94
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->mDelay:J

    .line 97
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->mCallback:Ljava/lang/Runnable;

    .line 98
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->access$000(Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->mDelay:J

    .line 99
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->isCounting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    :cond_0
    return-void
.end method

.method declared-synchronized start()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->isCounting:Z

    .line 103
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->mDelay:J

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$CountDown;->isCounting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
