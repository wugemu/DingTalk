.class public final Lfwg;
.super Lfge;
.source "BlacklistAdapter.java"


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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-direct {p0, p1, p2}, Lfge;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfge$a;Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 41
    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3051
    iget-object v0, p1, Lfge$a;->b:Landroid/widget/TextView;

    invoke-static {v0, p2}, Lfwg;->a(Landroid/widget/TextView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 3052
    iget-object v0, p1, Lfge$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p4, Landroid/widget/AbsListView;

    invoke-static {v0, p2, p4}, Lfwg;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/widget/AbsListView;)V

    .line 41
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 41
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2058
    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2062
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfwg;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 2063
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfwg$1;

    invoke-direct {v2, p0, p1, p2}, Lfwg$1;-><init>(Lfwg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V

    .line 2062
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

    .line 41
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1078
    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfwg;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1083
    sget v1, Lezg$c;->black_list_item_long_click:I

    new-instance v2, Lfwg$2;

    invoke-direct {v2, p0, p1, p2}, Lfwg$2;-><init>(Lfwg;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1095
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 1096
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
