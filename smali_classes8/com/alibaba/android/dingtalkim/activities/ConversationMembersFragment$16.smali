.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcif$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n_()Lcif$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "selectedList"    # Ljava/lang/Object;
    .param p2, "unCheckableList"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 384
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcif;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcif;

    move-result-object v3

    .line 1031
    iget v3, v3, Lcif;->c:I

    .line 384
    sget v4, Lcif;->b:I

    if-ne v3, v4, :cond_3

    move-object v0, p1

    .line 385
    check-cast v0, Ljava/util/List;

    .local v0, "selected":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object v1, p2

    .line 386
    check-cast v1, Ljava/util/List;

    .line 387
    .local v1, "unChecked":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v3, :cond_1

    .line 388
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 1182
    iput-object v1, v3, Lcwe;->i:Ljava/util/List;

    .line 389
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 1185
    iput-object v0, v3, Lcwe;->h:Ljava/util/List;

    .line 390
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 2166
    iget-object v3, v3, Lcwe;->f:Ljava/util/HashMap;

    .line 390
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 392
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 3166
    iget-object v4, v4, Lcwe;->f:Ljava/util/HashMap;

    .line 392
    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    .end local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v3}, Lcwe;->notifyDataSetChanged()V

    .line 396
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 399
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 400
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->b(Ljava/util/List;)V

    .line 402
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;

    .line 403
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v3, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;

    .line 406
    .end local v0    # "selected":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v1    # "unChecked":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    return-void
.end method
