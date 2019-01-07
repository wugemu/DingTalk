.class Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;
.super Ljava/lang/Object;
.source "PwdCommonHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

.field final synthetic val$mResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;->val$mResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    const-string/jumbo v1, "PPW_LOCK"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->writePWDErrorBehavorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    const-string/jumbo v1, "abort"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$3;->val$mResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->doNextStep(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 85
    return-void
.end method
