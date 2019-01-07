.class final Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;
.super Ljava/lang/Object;
.source "AddMembersActivity.java"

# interfaces
.implements Lfxw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v13, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->e(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->f(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->g(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "IDENTIFIY_ADD_MEMBER_ACTIVITY"

    new-instance v12, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;

    invoke-direct {v12, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;)V

    move v7, v6

    move v9, v8

    move v10, v6

    move v11, v6

    invoke-static/range {v0 .. v12}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 159
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->a(Ljava/util/List;)V

    goto :goto_0

    .line 167
    :cond_2
    sget v0, Lezg$l;->create_org_delete_myself_toast:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 150
    const-string/jumbo v0, "onDeleteButtonClick"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 151
    return-void
.end method
