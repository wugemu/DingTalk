.class Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;
.super Ljava/lang/Object;
.source "APTitleBar.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

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
.method public onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 172
    check-cast v0, Landroid/app/Activity;

    .line 173
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    return-void
.end method
