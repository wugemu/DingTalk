.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 1768
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1768
    check-cast p1, Ljava/util/List;

    .line 2771
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 2775
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2776
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2777
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2778
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2782
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2783
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    .line 2784
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    goto :goto_0

    .line 2790
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->x(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2791
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move v1, v2

    move v3, v2

    .line 2793
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2794
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2795
    if-eqz v0, :cond_3

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 2796
    add-int/lit8 v3, v3, 0x1

    .line 2798
    const/4 v5, 0x5

    if-gt v3, v5, :cond_3

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 2799
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2800
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2793
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2805
    :cond_4
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 2806
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2807
    const-string/jumbo v0, " "

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2810
    :cond_5
    if-lez v3, :cond_6

    .line 2811
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2812
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    sget v5, Lezg$l;->dt_contact_choose_result_invalid_mobile_tip:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 2813
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2812
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$2;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;)V

    .line 2814
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->create_org_confirm_continue:I

    new-instance v2, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8$1;-><init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;Ljava/util/List;)V

    .line 2820
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2827
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 2828
    :goto_2
    return-void

    .line 2832
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->h(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->addChooseObject(Ljava/util/List;)Z

    .line 2833
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l()V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1844
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->dismissLoadingDialog()V

    .line 1846
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->y(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$8;->b:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->l()V

    .line 1850
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1839
    return-void
.end method
