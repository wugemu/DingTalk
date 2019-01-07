.class Lcom/unicom/xiaowo/verify/sms/SimHelper$1;
.super Ljava/lang/Object;
.source "SimHelper.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;


# instance fields
.field final synthetic this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/sms/SimHelper;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$100(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$000(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$002(Lcom/unicom/xiaowo/verify/sms/SimHelper;Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyBroadcastReceiver;

    .line 45
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$200(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$200(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;->cancel()V

    .line 47
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$202(Lcom/unicom/xiaowo/verify/sms/SimHelper;Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;)Lcom/unicom/xiaowo/verify/sms/SimHelper$MyCount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_TIMEOUT:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    if-eq p1, v0, :cond_1

    .line 56
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_FAIL:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    if-eq p1, v0, :cond_1

    .line 58
    sget-object v0, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;->SMS_SEND_SUCC:Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$300(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$300(Lcom/unicom/xiaowo/verify/sms/SimHelper;)Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener;->onSmsSendResult(Lcom/unicom/xiaowo/verify/sms/SimHelper$SmsSendListener$SmsSendResult;Ljava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/sms/SimHelper$1;->this$0:Lcom/unicom/xiaowo/verify/sms/SimHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/sms/SimHelper;->access$402(Lcom/unicom/xiaowo/verify/sms/SimHelper;Z)Z

    .line 67
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
