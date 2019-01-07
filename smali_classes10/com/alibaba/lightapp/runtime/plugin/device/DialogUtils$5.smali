.class Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popPromptDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

.field final synthetic val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;->val$callback:Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;->dialogCallbackSuccess(ILjava/lang/String;)V

    .line 275
    return-void
.end method
