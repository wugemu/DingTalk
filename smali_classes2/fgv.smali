.class public final Lfgv;
.super Lfge;
.source "SettingOrgBossAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfge",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lfge;-><init>(Landroid/app/Activity;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final synthetic a(Lfge$a;Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 47
    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 3058
    if-eqz p2, :cond_2

    .line 3062
    iget-object v0, p0, Lfgv;->c:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 3063
    iget-object v0, p0, Lfgv;->c:Ljava/util/Map;

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object v2, v0

    .line 3066
    :goto_0
    if-eqz v2, :cond_4

    .line 3067
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 3069
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3070
    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 3072
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 3073
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 3075
    :cond_1
    iget-object v3, p1, Lfge$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3076
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3077
    iget-object v1, p1, Lfge$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p4, Landroid/widget/AbsListView;

    invoke-virtual {v1, v0, v2, p4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    :cond_2
    :goto_2
    return-void

    .line 3079
    :cond_3
    iget-object v2, p1, Lfge$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p4, Landroid/widget/AbsListView;

    invoke-virtual {v2, v0, v1, p4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 47
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 2086
    if-eqz p1, :cond_0

    .line 2087
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgv;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 2088
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfgv$1;

    invoke-direct {v2, p0, p1, p2}, Lfgv$1;-><init>(Lfgv;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;I)V

    .line 2087
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 47
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 1102
    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfgv;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    sget v1, Lezg$c;->boss_list_item_long_click:I

    new-instance v2, Lfgv$2;

    invoke-direct {v2, p0, p1}, Lfgv$2;-><init>(Lfgv;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1134
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 1135
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
