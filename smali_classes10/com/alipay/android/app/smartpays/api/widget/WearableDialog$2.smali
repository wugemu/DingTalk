.class Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;
.super Ljava/lang/Object;
.source "WearableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->showDialogImpl(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "wearV1"

    const-string/jumbo v2, "WearPayV1DlgCancel"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$100(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$200(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$200(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$DialogButtonActionListener;->onAction(I)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$2;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->dismiss()V

    goto :goto_0
.end method
