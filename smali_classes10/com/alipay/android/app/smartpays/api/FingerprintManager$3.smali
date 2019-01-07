.class Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$DialogButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/FingerprintManager;->showOpenDialog(Landroid/app/Activity;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

.field final synthetic val$callback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;->val$callback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "fpV1"

    const-string/jumbo v2, "FpOpenV1DlgCancel"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$3;->val$callback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->DLG_CANCEL:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 286
    :cond_0
    return-void
.end method
