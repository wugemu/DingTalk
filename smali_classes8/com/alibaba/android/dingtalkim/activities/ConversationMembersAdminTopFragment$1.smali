.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;
.super Lcwe$b;
.source "ConversationMembersAdminTopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    invoke-direct {p0}, Lcwe$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 4
    .param p1, "dividerView"    # Landroid/view/View;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->g:Lcwe;

    invoke-virtual {v2}, Lcwe;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p2, v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->g:Lcwe;

    .line 2135
    iget-object v0, v2, Lcwe;->t:Ljava/util/HashSet;

    .line 54
    .local v0, "admins":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;I)Ldqw;

    move-result-object v1

    .line 55
    .local v1, "nextModel":Ldqw;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 56
    if-eqz v1, :cond_0

    iget-object v2, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "letterTextView"    # Landroid/widget/TextView;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcwe$b;->a(Landroid/widget/TextView;I)V

    .line 34
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->g:Lcwe;

    invoke-virtual {v2}, Lcwe;->getCount()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->g:Lcwe;

    .line 1135
    iget-object v0, v2, Lcwe;->t:Ljava/util/HashSet;

    .line 39
    .local v0, "admins":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    invoke-static {v2, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;I)Ldqw;

    move-result-object v1

    .line 40
    .local v1, "currentUserModel":Ldqw;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 41
    if-eqz v1, :cond_0

    iget-object v2, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
