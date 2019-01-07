.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 1018
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "profile_bottom_extracontact_click"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1019
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1020
    :cond_0
    const-string/jumbo v6, "mExtOrgEmployees is empty"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1025
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v7, v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    goto :goto_0

    .line 1027
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v5, "orgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v2, "oids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1030
    .local v3, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_3

    .line 1033
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1037
    .end local v3    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 1038
    .local v4, "orgNameArray":[Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1039
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1040
    .local v1, "clickedItem":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v6, Lezg$l;->choose_from_enterprise:I

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1043
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$1;

    invoke-direct {v6, p0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0, v4, v10, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1050
    sget v6, Lezg$l;->cancel:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1051
    sget v6, Lezg$l;->sure:I

    new-instance v7, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;

    invoke-direct {v7, p0, v2, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2$2;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$2;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1065
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method
