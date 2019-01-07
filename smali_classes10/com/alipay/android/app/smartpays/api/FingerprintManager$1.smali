.class Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/FingerprintManager;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

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
    .line 163
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->access$100(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$1;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    invoke-static {v1}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->access$000(Lcom/alipay/android/app/smartpays/api/FingerprintManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->cancel(Landroid/content/Context;)V

    .line 164
    return-void
.end method
