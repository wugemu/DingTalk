.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
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
        "Lcfi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1071
    check-cast p1, Lcfi;

    .line 2075
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2079
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->p(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2080
    const-string/jumbo v0, "org_create_success"

    const-string/jumbo v1, "member=%d"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;

    move-result-object v3

    invoke-virtual {v3}, Lfgi;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 2315
    invoke-static {v10, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0, v8}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Z)Z

    .line 2085
    const-wide/16 v2, 0x0

    .line 2086
    const-string/jumbo v4, ""

    .line 2089
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;-><init>()V

    .line 2090
    if-eqz p1, :cond_1

    .line 2091
    iget-object v0, p1, Lcfi;->a:Ljava/lang/Long;

    .line 3044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2092
    iget-object v4, p1, Lcfi;->q:Ljava/lang/String;

    .line 2094
    iput-wide v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    .line 2095
    iput-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    .line 2096
    iget-object v0, p1, Lcfi;->b:Ljava/lang/String;

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    .line 2099
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2101
    if-eqz v0, :cond_2

    array-length v1, v0

    if-ne v1, v7, :cond_2

    .line 2102
    aget-object v1, v0, v9

    iput-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->province:Ljava/lang/String;

    .line 2103
    aget-object v0, v0, v6

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->city:Ljava/lang/String;

    .line 2107
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)I

    move-result v0

    iput v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->scale:I

    .line 2108
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 2109
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "pref_last_create_org_info"

    aput-object v1, v0, v8

    .line 2110
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 2109
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3052
    const/4 v1, -0x1

    invoke-static {v0, v5, v1}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 2112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->dismissLoadingDialog()V

    .line 2113
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->q(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 2115
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcfi;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2118
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcfi;->w:Ljava/lang/String;

    .line 2119
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    .line 2120
    invoke-virtual {v0, v1, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12$1;-><init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V

    .line 2121
    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2126
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2127
    :cond_3
    :goto_0
    return-void

    .line 2128
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->q(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->dismissLoadingDialog()V

    .line 1146
    const-string/jumbo v0, "12115"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    sget v3, Lezg$l;->dt_common_i_know:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 1152
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->b:Z

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$12;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    goto :goto_0

    .line 1149
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1135
    return-void
.end method
