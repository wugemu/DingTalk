.class public Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
.super Ljava/lang/Object;
.source "DetectTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;
    }
.end annotation


# instance fields
.field a:Ljava/util/Timer;

.field b:I

.field c:I

.field d:I

.field e:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

.field private f:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0x3e8

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    .line 9
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->f:I

    .line 10
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 11
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->c:I

    .line 12
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->d:I

    .line 16
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->f:I

    .line 17
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 19
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "millisecondtimeout"    # I
    .param p2, "millisecondDelay"    # I
    .param p3, "millisecondinternal"    # I

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0x3e8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    .line 9
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->f:I

    .line 10
    iput v2, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 11
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->c:I

    .line 12
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->d:I

    .line 22
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->f:I

    .line 23
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 24
    iput p2, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->c:I

    .line 25
    iput p3, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->d:I

    .line 26
    return-void
.end method


# virtual methods
.method public getLeftTime()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    return v0
.end method

.method public isTimeOut()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->f:I

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 47
    return-void
.end method

.method public setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->e:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

    .line 30
    return-void
.end method

.method public start()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->f:I

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->e:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->e:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;->countdown(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    .line 58
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;-><init>(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;)V

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->c:I

    int-to-long v2, v2

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->d:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 79
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->f:I

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    .line 87
    :cond_0
    return-void
.end method
