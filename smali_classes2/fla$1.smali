.class final Lfla$1;
.super Ljava/lang/Object;
.source "CreateOrgV3Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfla;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfla$b;

.field final synthetic b:Lfla;


# direct methods
.method constructor <init>(Lfla;Lfla$b;)V
    .locals 0
    .param p1, "this$0"    # Lfla;

    .prologue
    .line 326
    iput-object p1, p0, Lfla$1;->b:Lfla;

    iput-object p2, p0, Lfla$1;->a:Lfla$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v0, p0, Lfla$1;->b:Lfla;

    invoke-static {v0}, Lfla;->a(Lfla;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lfla$1;->b:Lfla;

    invoke-static {v0}, Lfla;->b(Lfla;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lezg$l;->dt_org_create_add_admin:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfla$1;->a:Lfla$b;

    iget-object v1, v1, Lfla$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lfla$1;->b:Lfla;

    invoke-static {v0}, Lfla;->c(Lfla;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .line 1727
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b:Lcom/alibaba/android/user/model/PositionData;

    .line 1728
    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a:Ljava/util/List;

    if-nez v1, :cond_2

    .line 335
    :cond_1
    :goto_1
    const-string/jumbo v0, "create_team_add_admin_btn_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1732
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1733
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/PositionData;

    .line 1734
    if-eqz v1, :cond_3

    .line 1735
    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1739
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1740
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1742
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1743
    sget v3, Lezg$l;->dt_org_create_select_admin_job_position_tips:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1744
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$3;

    invoke-direct {v3, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$3;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1780
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1781
    sget v1, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$4;

    invoke-direct {v3, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$4;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1787
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1788
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1789
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_1

    .line 337
    :cond_5
    iget-object v0, p0, Lfla$1;->b:Lfla;

    invoke-static {v0}, Lfla;->d(Lfla;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    const-string/jumbo v1, "identity_create_org_add_member"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
