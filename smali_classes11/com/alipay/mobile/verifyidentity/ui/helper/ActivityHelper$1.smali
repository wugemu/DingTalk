.class Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;
.super Lcom/alipay/mobile/verifyidentity/module/MicroModule;
.source "ActivityHelper.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ActivityHelper;

    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;-><init>()V

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
.method protected onCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method
