.class final Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;
.super Ljava/lang/Object;
.source "UserContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1708
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1714
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_user_choose_contact_limit_new_logic_v2"

    .line 2083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1714
    if-eqz v2, :cond_4

    .line 1715
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v3

    if-gt v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .line 1716
    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v3

    if-le v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 1722
    .local v0, "logic":Z
    :cond_3
    :goto_0
    if-eqz v0, :cond_9

    .line 1723
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->k(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1724
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->v(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)V

    .line 1735
    :goto_1
    return-void

    .line 1718
    .end local v0    # "logic":Z
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->t(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    .line 1719
    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->n(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->s(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->u(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)I

    move-result v3

    if-le v2, v3, :cond_8

    :cond_7
    move v0, v1

    .restart local v0    # "logic":Z
    :cond_8
    goto :goto_0

    .line 1727
    :cond_9
    const-class v1, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->w(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1728
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/friendcontact/FriendFragment;

    if-eqz v1, :cond_b

    .line 1729
    const-string/jumbo v1, "contact_create_team_add_member_ding_friend_confirm_btn_click"

    invoke-static {v1}, Lfxo;->b(Ljava/lang/String;)V

    .line 1734
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->m()V

    goto :goto_1

    .line 1730
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity$7;->a:Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->j(Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    if-eqz v1, :cond_a

    .line 1731
    const-string/jumbo v1, "contact_create_team_add_member_mobile_friend_confirm_btn_click"

    invoke-static {v1}, Lfxo;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
