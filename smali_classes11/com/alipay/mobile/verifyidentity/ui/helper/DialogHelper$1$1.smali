.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

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
.method public onClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 91
    return-void
.end method
