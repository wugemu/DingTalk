.class final Lfgo$c$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Lfgo$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$c;-><init>(Lfgo;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method constructor <init>(Lfgo;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lfgo$c$1;->a:Lfgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 688
    iget-object v0, p0, Lfgo$c$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lfgo$c$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v1

    .line 1662
    iget-boolean v0, v1, Lflt;->a:Z

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, v1, Lflt;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lflt;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, v1, Lflt;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1671
    iget-object v0, v1, Lflt;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1672
    if-eqz v0, :cond_0

    .line 1675
    iget-object v2, v1, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->showLoadingDialog()V

    .line 1676
    const/4 v2, 0x1

    iput-boolean v2, v1, Lflt;->a:Z

    .line 1678
    iget-object v2, v1, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    if-eqz v2, :cond_0

    .line 1681
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    .line 2636
    const-class v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 2637
    new-instance v4, Lflt$12;

    invoke-direct {v4, v1, p1}, Lflt$12;-><init>(Lflt;I)V

    .line 2658
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/alibaba/android/user/idl/services/ContactIService;->removeOrgApply(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;I)V
    .locals 7
    .param p1, "friendRequestObject"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 695
    iget-object v0, p0, Lfgo$c$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lfgo$c$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v2

    .line 2811
    if-eqz p1, :cond_0

    .line 2814
    iget-object v0, v2, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->showLoadingDialog()V

    .line 2815
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v0, v1, :cond_1

    .line 2816
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, v2, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/add_2_group.html"

    new-instance v3, Lflt$14;

    invoke-direct {v3, v2, p1}, Lflt$14;-><init>(Lflt;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2826
    iget-object v0, v2, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 2848
    :cond_0
    :goto_0
    return-void

    .line 2829
    :cond_1
    const-string/jumbo v0, ""

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "("

    aput-object v3, v1, v6

    const/4 v3, 0x1

    iget-object v4, v2, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    sget v5, Lezg$l;->my_local_contact:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ")"

    aput-object v4, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2831
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 2833
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2834
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 2835
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v4, v1

    .line 2836
    if-ltz v1, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2837
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2838
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    move-object v1, v0

    .line 2846
    :goto_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_5

    .line 2847
    iget-object v0, v2, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    goto :goto_0

    .line 2838
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_1

    .line 2840
    :cond_3
    const-string/jumbo v1, "nick substring index out of exception"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 2842
    goto :goto_2

    .line 2843
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->orgApplyObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    move-object v1, v0

    goto :goto_2

    .line 2850
    :cond_5
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, v2, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v4, Lflt$2;

    invoke-direct {v4, v2, p1, v1, p3}, Lflt$2;-><init>(Lflt;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2865
    iget-object v0, v2, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    goto/16 :goto_0
.end method
