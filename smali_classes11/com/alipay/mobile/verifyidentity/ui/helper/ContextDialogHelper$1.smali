.class Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;
.super Ljava/lang/Object;
.source "ContextDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$cancelable:Z

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$showProgressBar:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$cancelable:Z

    iput-boolean p4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$showProgressBar:Z

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

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
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showProgressDialog post"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_MSG:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_CANCELABLE:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$cancelable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_SHOW_PROGRESSBAR:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$showProgressBar:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    sput-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->needOrCanShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivityByContext(Landroid/content/Intent;)V

    .line 77
    :cond_0
    return-void
.end method
