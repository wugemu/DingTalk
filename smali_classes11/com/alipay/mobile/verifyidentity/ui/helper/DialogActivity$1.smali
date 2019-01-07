.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onBizCancelListener Exception. Do nothing."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
