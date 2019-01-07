.class Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;
.super Ljava/lang/Object;
.source "DingCard.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 224
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 216
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 220
    return-void
.end method
