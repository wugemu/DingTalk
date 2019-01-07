.class Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popBigTextDialog(Landroid/os/Bundle;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

.field final synthetic val$bigTextDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;->val$bigTextDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

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
    .line 605
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;->val$bigTextDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->dismiss()V

    .line 606
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$17;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackSuccess(ILjava/lang/String;)V

    .line 607
    return-void
.end method
