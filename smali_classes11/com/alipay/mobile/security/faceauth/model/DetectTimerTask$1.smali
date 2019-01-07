.class final Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;
.super Ljava/util/TimerTask;
.source "DetectTimerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget v2, v2, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget v0, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    if-gtz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->e:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->e:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$1;->a:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    iget v1, v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->b:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;->countdown(I)V

    .line 76
    :cond_1
    return-void
.end method
