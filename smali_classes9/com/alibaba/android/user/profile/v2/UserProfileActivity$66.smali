.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;
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
    .line 993
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 997
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 998
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-ne v0, v1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lezg$l;->menu_to_send:I

    if-ne v0, v1, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const-string/jumbo v1, "profile_addfriend_click"

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->t(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto :goto_0

    .line 1005
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lezg$l;->menu_to_accept:I

    if-ne v0, v1, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$66;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->u(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    goto :goto_0
.end method
