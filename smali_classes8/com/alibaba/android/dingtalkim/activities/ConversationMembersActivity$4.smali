.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;
.super Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;
.source "ConversationMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 817
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 818
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a()V

    .line 819
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    .line 820
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;I)I

    .line 854
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->supportInvalidateOptionsMenu()V

    .line 855
    return-void
.end method

.method public final a(Ldqw;)V
    .locals 3
    .param p1, "userProfileObject"    # Ldqw;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 706
    iget-object v0, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1711
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V

    .line 707
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 726
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    sget v4, Lctk$i;->loading:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    .line 727
    .local v0, "loadingDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 728
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 729
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 762
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "showAddMenu"    # Z

    .prologue
    .line 829
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Z)Z

    .line 830
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->supportInvalidateOptionsMenu()V

    .line 831
    return-void
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 824
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(Ldqw;)V
    .locals 2
    .param p1, "userProfileObject"    # Ldqw;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 716
    iget-object v0, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1721
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 717
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 767
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    sget v4, Lctk$i;->loading:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    .line 768
    .local v0, "loadingDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 769
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 770
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 864
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 867
    :cond_0
    return-void
.end method

.method public final c(Ldqw;)V
    .locals 2
    .param p1, "userProfileObject"    # Ldqw;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 835
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    iget-object v1, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    iget-object v1, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->n(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->n(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    iget-object v1, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 844
    :cond_2
    return-void
.end method
