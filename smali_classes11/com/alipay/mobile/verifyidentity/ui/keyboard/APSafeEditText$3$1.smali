.class Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3$1;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;)V
    .locals 1

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;

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
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->showNormalKeyboard(Landroid/widget/EditText;)V

    .line 385
    return-void
.end method
