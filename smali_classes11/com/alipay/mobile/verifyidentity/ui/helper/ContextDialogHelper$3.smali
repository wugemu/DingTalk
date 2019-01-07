.class Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;
.super Ljava/lang/Object;
.source "ContextDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$negative:Ljava/lang/String;

.field final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positive:Ljava/lang/String;

.field final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$positive:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$negative:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

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
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show ALERT post"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$positive:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$negative:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->setAlertInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->startActivityByContext(Landroid/content/Intent;)V

    .line 142
    :cond_0
    return-void
.end method
