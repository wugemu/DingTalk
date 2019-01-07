.class public final Lfwh;
.super Lfge;
.source "FriendShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfge",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-direct {p0, p1, p2}, Lfge;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfge$a;Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3030
    iget-object v0, p1, Lfge$a;->b:Landroid/widget/TextView;

    invoke-static {v0, p2}, Lfwh;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 3031
    iget-object v0, p1, Lfge$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p4, Landroid/widget/AbsListView;

    invoke-static {v0, p2, p4}, Lfwh;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/widget/AbsListView;)V

    .line 22
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 22
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2036
    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    .line 2037
    :cond_0
    :goto_0
    return-void

    .line 2040
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfwh;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 2041
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfwh$1;

    invoke-direct {v2, p0, p1, p2}, Lfwh$1;-><init>(Lfwh;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V

    .line 2040
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 22
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1055
    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfwh;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1060
    sget v1, Lezg$c;->dt_privacy_share_mobile_cancel:I

    new-instance v2, Lfwh$2;

    invoke-direct {v2, p0, p1, p2}, Lfwh$2;-><init>(Lfwh;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1072
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 1073
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
