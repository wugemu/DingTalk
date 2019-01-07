.class final Lcqp$3;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqp;


# direct methods
.method constructor <init>(Lcqp;)V
    .locals 0
    .param p1, "this$0"    # Lcqp;

    .prologue
    .line 168
    iput-object p1, p0, Lcqp$3;->a:Lcqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyReEncodeFinish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcqp$3;->a:Lcqp;

    .line 1021
    iget-boolean v0, v0, Lcqp;->e:Z

    .line 171
    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcqp$3;->a:Lcqp;

    .line 2021
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcqp;->e:Z

    .line 173
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcqp$3$1;

    invoke-direct {v1, p0}, Lcqp$3$1;-><init>(Lcqp$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 192
    :cond_0
    return-void
.end method
