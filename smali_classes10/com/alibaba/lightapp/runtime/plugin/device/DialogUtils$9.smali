.class Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popUpgradeDialog(Ljava/util/List;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

.field final synthetic val$upgradeDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;->val$upgradeDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;->val$upgradeDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 488
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$9;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackSuccess(ILjava/lang/String;)V

    .line 489
    return-void
.end method
