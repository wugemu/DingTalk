.class Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->setAllButtonsGone()V
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
    .line 233
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

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
    const/16 v1, 0x8

    .line 236
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$500(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$600(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$700(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$800(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$8;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$400(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->setCancelable(Z)V

    .line 241
    return-void
.end method
