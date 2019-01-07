.class Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;
.super Ljava/lang/Object;
.source "DingCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->verifyPwd(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

.field final synthetic val$callback:Lcma;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->val$callback:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 156
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lhdn$i;->dialog_dingcard_verify_pwd:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "dialogView":Landroid/view/View;
    sget v4, Lhdn$h;->edt_old_pwd:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 158
    .local v3, "editText":Landroid/widget/EditText;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->and_settings_verify_old_password:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 160
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->and_settings_old_password_for_enter:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 162
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->cancel:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$1;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 170
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->sure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 209
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 212
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    return-void
.end method
