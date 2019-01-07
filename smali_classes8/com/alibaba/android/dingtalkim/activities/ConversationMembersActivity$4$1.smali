.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;
.super Ljava/lang/Object;
.source "ConversationMembersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v0, "allChooseIdentity":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldqw;

    .line 734
    .local v2, "object":Ldqw;
    iget-object v4, v2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 735
    .local v1, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 736
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 737
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 740
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 742
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 747
    .end local v1    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "object":Ldqw;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$1;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 760
    return-void
.end method
