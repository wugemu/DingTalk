.class Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;
.super Ljava/lang/Object;
.source "BlankPageDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountDown"
.end annotation


# static fields
.field private static final DELAY:J = 0xbb8L


# instance fields
.field private volatile isCounting:Z

.field private mCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->this$0:Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->isCounting:Z

    .line 143
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->mCallback:Ljava/lang/Runnable;

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->isCounting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_0
    return-void
.end method

.method declared-synchronized start()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->isCounting:Z

    .line 148
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector$CountDown;->isCounting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
