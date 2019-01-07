.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

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
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "now to finish this DialogActivity"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$201(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    .line 91
    return-void
.end method
