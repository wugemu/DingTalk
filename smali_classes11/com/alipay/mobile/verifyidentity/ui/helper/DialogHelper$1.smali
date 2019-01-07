.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

.field final synthetic val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$negative:Ljava/lang/String;

.field final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positive:Ljava/lang/String;

.field final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$positive:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negative:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p7, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

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
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$msg:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$positive:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negative:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setNegativeListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;)V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setPositiveListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;)V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogHelper.alert(): exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
