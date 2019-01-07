.class final Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;
.super Ljava/lang/Object;
.source "DingTaskStatusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lbff;

.field final synthetic d:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Landroid/widget/EditText;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lbff;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->d:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p4, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->c:Lbff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 616
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->d:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->a:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 617
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 619
    const-string/jumbo v0, ""

    .line 620
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->d:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$5;->c:Lbff;

    invoke-static {v1, v0, v2}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Ljava/lang/String;Lbff;)V

    .line 625
    return-void
.end method
