.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V
    .locals 1

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

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
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APImageButton;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$200(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->access$100(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)Lcom/alipay/mobile/verifyidentity/ui/APImageButton;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 431
    :cond_0
    return-void
.end method
