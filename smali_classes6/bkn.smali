.class public final Lbkn;
.super Ljava/lang/Object;
.source "PositiveCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbkn$a;
    }
.end annotation


# instance fields
.field public a:Z

.field b:J

.field public c:Lbkn$a;

.field public d:J

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lbkn$1;

    invoke-direct {v0, p0}, Lbkn$1;-><init>(Lbkn;)V

    iput-object v0, p0, Lbkn;->f:Landroid/os/Handler$Callback;

    .line 37
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lbkn;->b:J

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    invoke-virtual {v1}, Lhcv;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lbkn;->f:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbkn;->e:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v4, 0x64

    const-wide/16 v2, 0x0

    .line 109
    iget-wide v0, p0, Lbkn;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 110
    iput-wide v2, p0, Lbkn;->d:J

    .line 112
    :cond_0
    iget-wide v0, p0, Lbkn;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 113
    iget-wide v0, p0, Lbkn;->d:J

    iget-wide v2, p0, Lbkn;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2081
    iget-object v2, p0, Lbkn;->e:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2082
    iget-object v2, p0, Lbkn;->e:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    :cond_1
    iget-object v0, p0, Lbkn;->c:Lbkn$a;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lbkn;->c:Lbkn$a;

    invoke-interface {v0}, Lbkn$a;->a()V

    .line 118
    :cond_2
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lbkn;->d:J

    .line 67
    iget-boolean v0, p0, Lbkn;->a:Z

    if-eqz v0, :cond_0

    .line 2073
    invoke-virtual {p0}, Lbkn;->a()V

    .line 70
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "open"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 42
    iget-boolean v0, p0, Lbkn;->a:Z

    if-ne v0, p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-boolean p1, p0, Lbkn;->a:Z

    .line 46
    iget-boolean v0, p0, Lbkn;->a:Z

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p0}, Lbkn;->a()V

    goto :goto_0

    .line 1077
    :cond_1
    iget-object v0, p0, Lbkn;->e:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
