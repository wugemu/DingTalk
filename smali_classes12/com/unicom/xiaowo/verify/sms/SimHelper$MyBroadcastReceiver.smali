.class Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/sms/SimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    if-nez p2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sms:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$500(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 445
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$600(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    move-result-object v0

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_SUCC:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    iget-object v2, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$500(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$600(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    move-result-object v0

    sget-object v1, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    iget-object v2, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$500(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    goto :goto_0
.end method
