.class Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;
.super Ljava/lang/Object;
.source "WearableDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->showLoadingSuccess()V
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
    .line 207
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$400(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->isSpinning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$400(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->stopSpinning()V

    .line 212
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$400(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->beginDrawTick()V

    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$7;->this$0:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;->access$400(Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;->start()V

    .line 215
    :cond_0
    return-void
.end method
