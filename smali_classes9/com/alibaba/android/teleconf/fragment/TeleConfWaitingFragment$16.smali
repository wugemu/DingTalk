.class final Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;
.super Ljava/lang/Object;
.source "TeleConfWaitingFragment.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0xc8

    .line 700
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;

    .line 1703
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Z)Z

    .line 1704
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    .line 1705
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1706
    :cond_0
    const-string/jumbo v1, "408"

    .line 1707
    const-string/jumbo v0, "create failed, result is null"

    .line 1708
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    if-eqz v2, :cond_1

    .line 1709
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->code:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1710
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;->cause:Ljava/lang/String;

    .line 1712
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1713
    :goto_0
    return-void

    .line 1716
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)I

    .line 1717
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1733
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->businessId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1736
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lewc;->a(Ljava/lang/String;)V

    .line 1739
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->callbackNum:Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    invoke-virtual {v0, v1, v2}, Lewl;->a(ZLcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;)V

    .line 1741
    const-string/jumbo v0, "tele_conf"

    const-string/jumbo v1, "free_call"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Create biz call success "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 746
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4, v8}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;Z)Z

    .line 747
    const/16 v4, 0x9

    invoke-static {v4, p2}, Lewc;->a(ILjava/lang/String;)V

    .line 749
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 750
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->p(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 756
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->q(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Fail code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .line 759
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .line 760
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .line 761
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    .line 762
    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 764
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ILjava/lang/String;)V

    .line 765
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    .line 814
    :goto_1
    return-void

    .line 766
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->r(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)I

    move-result v4

    const/16 v5, 0x198

    if-eq v4, v5, :cond_5

    .line 768
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Update biz info : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v9}, Lewh;->a(ZLcma;)V

    .line 770
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 771
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 772
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Leuj$j;->layout_conf_dialog_view:I

    invoke-virtual {v4, v5, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 773
    .local v2, "contentView":Landroid/view/View;
    sget v4, Leuj$i;->content_txt:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 774
    .local v1, "content":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 776
    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 787
    sget v4, Leuj$l;->sure:I

    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16$3;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;)V

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 798
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 803
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "content":Landroid/widget/TextView;
    .end local v2    # "contentView":Landroid/view/View;
    :goto_2
    new-instance v3, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 804
    .local v3, "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    sget-object v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_BIZ_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v4, v3, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 805
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, ""

    :goto_3
    iput-object v4, v3, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 806
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 807
    const-string/jumbo v4, "permission"

    iput-object v4, v3, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 808
    iput-object p2, v3, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 809
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    goto/16 :goto_1

    .line 800
    .end local v3    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_3
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 805
    .restart local v3    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 811
    .end local v3    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->d(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)Z

    move-result v5

    invoke-static {v4, v5, v8}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;ZI)V

    .line 812
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment$16;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;)V

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method
