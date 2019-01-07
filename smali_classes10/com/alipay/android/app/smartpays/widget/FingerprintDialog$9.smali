.class Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$9;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->dismiss(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$9;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$9;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$400(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
