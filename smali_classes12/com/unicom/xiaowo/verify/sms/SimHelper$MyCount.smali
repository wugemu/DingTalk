.class Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;
.super Landroid/os/CountDownTimer;
.source "SimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/sms/SimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;


# direct methods
.method public constructor <init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;JJ)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    .line 421
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 422
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 425
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$600(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    move-result-object v0

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_TIMEOUT:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    iget-object v2, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$500(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sms send countdown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 430
    return-void
.end method
