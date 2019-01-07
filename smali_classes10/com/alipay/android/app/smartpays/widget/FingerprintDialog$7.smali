.class Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$7;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->dismiss(Landroid/content/Context;)V
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
    .line 193
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$7;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$7;->this$0:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->access$400(Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;)Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/DismissCatchDialog;->dismiss()V

    .line 197
    return-void
.end method
